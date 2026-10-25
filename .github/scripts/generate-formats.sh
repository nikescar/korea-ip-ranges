#!/bin/bash
# Generate all output formats

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

TEMP_DIR="${TEMP_DIR:-/tmp/korea-ip-ranges}"
OUTPUT_DIR="${OUTPUT_DIR:-.}"

TODAY=$(current_date)
SOURCE_IPV4="https://xn--3e0bx5euxnjje69i70af08bea817g.xn--3e0b707e/jsp/business/management/isCurrentIpv4.jsp"
SOURCE_IPV6="https://xn--3e0bx5euxnjje69i70af08bea817g.xn--3e0b707e/jsp/business/management/isCurrentIpv6.jsp"

# Generate merged combined (v4+v6) file
generate_merged_combined() {
    local name="$1"
    local v4_file="$2"
    local v6_file="$3"
    local output="$4"

    {
        [[ -f "$v4_file" ]] && cat "$v4_file"
        [[ -f "$v6_file" ]] && cat "$v6_file"
    } > "$output"
}

# Generate unmerged combined file
generate_unmerged_combined() {
    local name="$1"
    local v4_file="$2"
    local v6_file="$3"
    local output="$4"

    {
        [[ -f "$v4_file" ]] && cat "$v4_file"
        [[ -f "$v6_file" ]] && cat "$v6_file"
    } > "$output"
}

# Generate SQL format
generate_sql() {
    local name="$1"
    local merged_file="$2"
    local output="$3"

    cat > "$output" <<SQL_HEADER
-- SQL script to create table \`${name}_ips\` and insert IP addresses
-- Generated: $TODAY
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS \`${name}_ips\` (
  \`ip_address\` VARCHAR(45) NOT NULL,
  \`ip_type\` VARCHAR(10) NOT NULL,
  PRIMARY KEY (\`ip_address\`)
);

SQL_HEADER

    while IFS= read -r cidr; do
        [[ -z "$cidr" ]] && continue
        if [[ "$cidr" =~ : ]]; then
            echo "INSERT INTO \`${name}_ips\` (\`ip_address\`, \`ip_type\`) VALUES ('$cidr', 'IPv6');"
        else
            echo "INSERT INTO \`${name}_ips\` (\`ip_address\`, \`ip_type\`) VALUES ('$cidr', 'IPv4');"
        fi
    done < "$merged_file" >> "$output"
}

# Generate JSON format
generate_json() {
    local merged_file="$1"
    local output="$2"

    echo "[" > "$output"
    local first=true
    while IFS= read -r cidr; do
        [[ -z "$cidr" ]] && continue

        if [[ "$first" == true ]]; then
            first=false
        else
            echo "," >> "$output"
        fi

        if [[ "$cidr" =~ : ]]; then
            echo -n "  {\"ip_address\": \"$cidr\", \"ip_type\": \"IPv6\"}" >> "$output"
        else
            echo -n "  {\"ip_address\": \"$cidr\", \"ip_type\": \"IPv4\"}" >> "$output"
        fi
    done < "$merged_file"
    echo "" >> "$output"
    echo "]" >> "$output"
}

# Generate CSV format
generate_csv() {
    local merged_file="$1"
    local output="$2"

    echo "ip_address,ip_type" > "$output"
    while IFS= read -r cidr; do
        [[ -z "$cidr" ]] && continue
        if [[ "$cidr" =~ : ]]; then
            echo "$cidr,IPv6"
        else
            echo "$cidr,IPv4"
        fi
    done < "$merged_file" >> "$output"
}

# Generate netset format
generate_netset() {
    local name="$1"
    local v4_file="$2"
    local v6_file="$3"
    local output="$4"

    local v4_count=0
    local v6_count=0
    [[ -f "$v4_file" ]] && v4_count=$(wc -l < "$v4_file")
    [[ -f "$v6_file" ]] && v6_count=$(wc -l < "$v6_file")

    cat > "$output" <<NETSET_HEADER
# ${name} IP ranges - ipset restore format (hash:net)
# Generated: $TODAY
# IPv4: $v4_count merged subnets
# IPv6: $v6_count merged subnets
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# Load with: sudo ipset restore -! < ${name}.netset
#
NETSET_HEADER

    if [[ -f "$v4_file" && -s "$v4_file" ]]; then
        echo "create ${name}_v4 hash:net family inet hashsize 4096 maxelem 1048576 -exist" >> "$output"
        echo "flush ${name}_v4" >> "$output"
        while IFS= read -r cidr; do
            [[ -z "$cidr" ]] && continue
            echo "add ${name}_v4 $cidr"
        done < "$v4_file" >> "$output"
    fi

    if [[ -f "$v6_file" && -s "$v6_file" ]]; then
        echo "create ${name}_v6 hash:net family inet6 hashsize 4096 maxelem 1048576 -exist" >> "$output"
        echo "flush ${name}_v6" >> "$output"
        while IFS= read -r cidr; do
            [[ -z "$cidr" ]] && continue
            echo "add ${name}_v6 $cidr"
        done < "$v6_file" >> "$output"
    fi
}

# Generate nftables allow
generate_nftables_allow() {
    local name="$1"
    local merged_file="$2"
    local output="$3"

    cat > "$output" <<NFT_HEADER
# Korea IP Ranges - ${name}
# Updated: $TODAY
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# This file is generated automatically. Do not edit it directly.
# nftables allow rules for ${name}

table inet filter_${name}_allow {
  chain input {
    type filter hook input priority 0; policy drop;
NFT_HEADER

    while IFS= read -r cidr; do
        [[ -z "$cidr" ]] && continue
        if [[ "$cidr" =~ : ]]; then
            echo "    ip6 saddr $cidr accept"
        else
            echo "    ip saddr $cidr accept"
        fi
    done < "$merged_file" >> "$output"

    echo "  }" >> "$output"
    echo "}" >> "$output"
}

# Generate nftables deny
generate_nftables_deny() {
    local name="$1"
    local merged_file="$2"
    local output="$3"

    cat > "$output" <<NFT_HEADER
# Korea IP Ranges - ${name}
# Updated: $TODAY
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# This file is generated automatically. Do not edit it directly.
# nftables deny rules for ${name}

table inet filter_${name}_deny {
  chain input {
    type filter hook input priority 0; policy accept;
NFT_HEADER

    while IFS= read -r cidr; do
        [[ -z "$cidr" ]] && continue
        if [[ "$cidr" =~ : ]]; then
            echo "    ip6 saddr $cidr drop"
        else
            echo "    ip saddr $cidr drop"
        fi
    done < "$merged_file" >> "$output"

    echo "  }" >> "$output"
    echo "}" >> "$output"
}

# Generate nginx allow
generate_nginx_allow() {
    local name="$1"
    local merged_file="$2"
    local output="$3"

    cat > "$output" <<NGINX_HEADER
# Korea IP Ranges - ${name}
# Updated: $TODAY
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# This file is generated automatically. Do not edit it directly.
# To restrict access to only these IPs in nginx,
# add the following line to your server block in your nginx configuration file:
# include /path/to/nginx_${name}_allow.conf;

NGINX_HEADER

    while IFS= read -r cidr; do
        [[ -z "$cidr" ]] && continue
        echo "allow $cidr;"
    done < "$merged_file" >> "$output"

    echo "deny all;" >> "$output"
}

# Generate nginx deny
generate_nginx_deny() {
    local name="$1"
    local merged_file="$2"
    local output="$3"

    cat > "$output" <<NGINX_HEADER
# Korea IP Ranges - ${name}
# Updated: $TODAY
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# This file is generated automatically. Do not edit it directly.
# To deny access from these IPs in nginx,
# add the following line to your server block in your nginx configuration file:
# include /path/to/nginx_${name}_deny.conf;

NGINX_HEADER

    while IFS= read -r cidr; do
        [[ -z "$cidr" ]] && continue
        echo "deny $cidr;"
    done < "$merged_file" >> "$output"

    echo "allow all;" >> "$output"
}

# Generate UFW allow
generate_ufw_allow() {
    local name="$1"
    local merged_file="$2"
    local output="$3"

    cat > "$output" <<UFW_HEADER
#!/bin/bash
# Korea IP Ranges - ${name}
# Updated: $TODAY
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# This file is generated automatically. Do not edit it directly.
# UFW allow rules for ${name}

UFW_HEADER

    while IFS= read -r cidr; do
        [[ -z "$cidr" ]] && continue
        echo "ufw allow from $cidr"
    done < "$merged_file" >> "$output"

    chmod +x "$output"
}

# Generate UFW deny
generate_ufw_deny() {
    local name="$1"
    local merged_file="$2"
    local output="$3"

    cat > "$output" <<UFW_HEADER
#!/bin/bash
# Korea IP Ranges - ${name}
# Updated: $TODAY
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# This file is generated automatically. Do not edit it directly.
# UFW deny rules for ${name}

UFW_HEADER

    while IFS= read -r cidr; do
        [[ -z "$cidr" ]] && continue
        echo "ufw deny from $cidr"
    done < "$merged_file" >> "$output"

    chmod +x "$output"
}

# Generate metadata JSON
generate_metadata() {
    local name="$1"
    local v4_file="$2"
    local v6_file="$3"
    local merged_v4_file="$4"
    local merged_v6_file="$5"
    local combined_file="$6"
    local output="$7"

    local v4_count=0
    local v6_count=0
    local merged_v4_count=0
    local merged_v6_count=0

    [[ -f "$v4_file" ]] && v4_count=$(wc -l < "$v4_file")
    [[ -f "$v6_file" ]] && v6_count=$(wc -l < "$v6_file")
    [[ -f "$merged_v4_file" ]] && merged_v4_count=$(wc -l < "$merged_v4_file")
    [[ -f "$merged_v6_file" ]] && merged_v6_count=$(wc -l < "$merged_v6_file")

    local sha256=$(file_sha256 "$combined_file")

    cat > "$output" <<META_JSON
{
  "provider": "${name}",
  "country": "KR",
  "generated_date": "$TODAY",
  "sources": [
    "$SOURCE_IPV4",
    "$SOURCE_IPV6"
  ],
  "ipv4": {
    "cidrs": $v4_count,
    "merged_cidrs": $merged_v4_count
  },
  "ipv6": {
    "cidrs": $v6_count,
    "merged_cidrs": $merged_v6_count
  },
  "total_entries": $((v4_count + v6_count)),
  "content_sha256": "$sha256",
  "license": "CC0-1.0",
  "license_url": "https://github.com/nikescar/korea-ip-ranges/blob/main/LICENSE"
}
META_JSON
}

# Process each ISP
log "Generating formats for ISPs..."

while IFS= read -r isp; do
    [[ -z "$isp" ]] && continue

    isp_safe=$(normalize_isp_name "$isp")
    log "Processing $isp ($isp_safe)..."

    v4_merged="$TEMP_DIR/${isp_safe}_merged_v4.txt"
    v6_merged="$TEMP_DIR/${isp_safe}_merged_v6.txt"
    v4_unmerged="$TEMP_DIR/${isp_safe}_v4.txt"
    v6_unmerged="$TEMP_DIR/${isp_safe}_v6.txt"

    isp_dir="$OUTPUT_DIR/korea"
    mkdir -p "$isp_dir"

    # Combined merged
    combined_merged="$isp_dir/${isp_safe}_ips_merged.txt"
    generate_merged_combined "$isp_safe" "$v4_merged" "$v6_merged" "$combined_merged"

    # Combined unmerged
    combined_unmerged="$isp_dir/${isp_safe}_ips.txt"
    generate_unmerged_combined "$isp_safe" "$v4_unmerged" "$v6_unmerged" "$combined_unmerged"

    # Copy merged v4/v6
    [[ -f "$v4_merged" ]] && cp "$v4_merged" "$isp_dir/${isp_safe}_ips_merged_v4.txt"
    [[ -f "$v6_merged" ]] && cp "$v6_merged" "$isp_dir/${isp_safe}_ips_merged_v6.txt"

    # SQL
    generate_sql "$isp_safe" "$combined_merged" "$isp_dir/${isp_safe}_ips.sql"

    # JSON
    generate_json "$combined_merged" "$isp_dir/${isp_safe}_ips.json"

    # CSV
    generate_csv "$combined_merged" "$isp_dir/${isp_safe}_ips.csv"

    # Netset
    generate_netset "$isp_safe" "$v4_merged" "$v6_merged" "$isp_dir/${isp_safe}.netset"

    # Nftables
    generate_nftables_allow "$isp_safe" "$combined_merged" "$isp_dir/nftables_${isp_safe}_allow.conf"
    generate_nftables_deny "$isp_safe" "$combined_merged" "$isp_dir/nftables_${isp_safe}_deny.conf"

    # Nginx
    generate_nginx_allow "$isp_safe" "$combined_merged" "$isp_dir/nginx_${isp_safe}_allow.conf"
    generate_nginx_deny "$isp_safe" "$combined_merged" "$isp_dir/nginx_${isp_safe}_deny.conf"

    # UFW
    generate_ufw_allow "$isp_safe" "$combined_merged" "$isp_dir/ufw_${isp_safe}_allow.sh"
    generate_ufw_deny "$isp_safe" "$combined_merged" "$isp_dir/ufw_${isp_safe}_deny.sh"

    # Metadata
    generate_metadata "$isp_safe" "$v4_unmerged" "$v6_unmerged" "$v4_merged" "$v6_merged" "$combined_merged" "$isp_dir/${isp_safe}_meta.json"

done < "$TEMP_DIR/isp-list.txt"

# Process consolidated Korea files
log "Generating consolidated Korea formats..."

v4_merged="$TEMP_DIR/korea_merged_v4.txt"
v6_merged="$TEMP_DIR/korea_merged_v6.txt"
v4_unmerged="$TEMP_DIR/korea_v4.txt"
v6_unmerged="$TEMP_DIR/korea_v6.txt"

# Combined merged
combined_merged="$OUTPUT_DIR/korea_ips_merged.txt"
generate_merged_combined "korea" "$v4_merged" "$v6_merged" "$combined_merged"

# Combined unmerged
combined_unmerged="$OUTPUT_DIR/korea_ips.txt"
generate_unmerged_combined "korea" "$v4_unmerged" "$v6_unmerged" "$combined_unmerged"

# Copy merged v4/v6
cp "$v4_merged" "$OUTPUT_DIR/korea_ips_merged_v4.txt"
cp "$v6_merged" "$OUTPUT_DIR/korea_ips_merged_v6.txt"

# SQL
generate_sql "korea" "$combined_merged" "$OUTPUT_DIR/korea_ips.sql"

# JSON
generate_json "$combined_merged" "$OUTPUT_DIR/korea_ips.json"

# CSV
generate_csv "$combined_merged" "$OUTPUT_DIR/korea_ips.csv"

# Netset
generate_netset "korea" "$v4_merged" "$v6_merged" "$OUTPUT_DIR/korea.netset"

# Nftables
generate_nftables_allow "korea" "$combined_merged" "$OUTPUT_DIR/nftables_korea_allow.conf"
generate_nftables_deny "korea" "$combined_merged" "$OUTPUT_DIR/nftables_korea_deny.conf"

# Nginx
generate_nginx_allow "korea" "$combined_merged" "$OUTPUT_DIR/nginx_korea_allow.conf"
generate_nginx_deny "korea" "$combined_merged" "$OUTPUT_DIR/nginx_korea_deny.conf"

# UFW
generate_ufw_allow "korea" "$combined_merged" "$OUTPUT_DIR/ufw_korea_allow.sh"
generate_ufw_deny "korea" "$combined_merged" "$OUTPUT_DIR/ufw_korea_deny.sh"

# Metadata
generate_metadata "korea" "$v4_unmerged" "$v6_unmerged" "$v4_merged" "$v6_merged" "$combined_merged" "$OUTPUT_DIR/korea_meta.json"

log "Format generation complete"

#!/usr/bin/env python3
"""Generate all output formats for ISPs"""

import json
import hashlib
import os
import sys
from pathlib import Path

TEMP_DIR = os.getenv("TEMP_DIR", "/tmp/korea-ip-ranges")
OUTPUT_DIR = os.getenv("OUTPUT_DIR", ".")
TODAY = "2026-10-26"
SOURCE_IPV4 = "https://xn--3e0bx5euxnjje69i70af08bea817g.xn--3e0b707e/jsp/business/management/isCurrentIpv4.jsp"
SOURCE_IPV6 = "https://xn--3e0bx5euxnjje69i70af08bea817g.xn--3e0b707e/jsp/business/management/isCurrentIpv6.jsp"

def normalize_isp_name(isp):
    """Normalize ISP name to safe filename"""
    return isp.lower().replace('(', '').replace(')', '').replace(' ', '_')

def read_cidrs(filepath):
    """Read CIDR list from file"""
    if not os.path.exists(filepath):
        return []
    with open(filepath) as f:
        return [line.strip() for line in f if line.strip()]

def generate_all_formats(isp, isp_safe, output_dir):
    """Generate all formats for an ISP"""

    v4_merged = read_cidrs(f"{TEMP_DIR}/{isp_safe}_merged_v4.txt")
    v6_merged = read_cidrs(f"{TEMP_DIR}/{isp_safe}_merged_v6.txt")
    v4_unmerged = read_cidrs(f"{TEMP_DIR}/{isp_safe}_v4.txt")
    v6_unmerged = read_cidrs(f"{TEMP_DIR}/{isp_safe}_v6.txt")

    all_merged = v4_merged + v6_merged
    all_unmerged = v4_unmerged + v6_unmerged

    if not all_merged:
        print(f"  WARNING: No data for {isp_safe}", file=sys.stderr)
        return

    # Plain text files
    with open(f"{output_dir}/{isp_safe}_ips_merged.txt", 'w') as f:
        f.write('\n'.join(all_merged) + '\n')

    with open(f"{output_dir}/{isp_safe}_ips.txt", 'w') as f:
        f.write('\n'.join(all_unmerged) + '\n')

    if v4_merged:
        with open(f"{output_dir}/{isp_safe}_ips_merged_v4.txt", 'w') as f:
            f.write('\n'.join(v4_merged) + '\n')

    if v6_merged:
        with open(f"{output_dir}/{isp_safe}_ips_merged_v6.txt", 'w') as f:
            f.write('\n'.join(v6_merged) + '\n')

    # SQL
    with open(f"{output_dir}/{isp_safe}_ips.sql", 'w') as f:
        f.write(f"""-- SQL script to create table `{isp_safe}_ips` and insert IP addresses
-- Generated: {TODAY}
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `{isp_safe}_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

""")
        for cidr in all_merged:
            ip_type = 'IPv6' if ':' in cidr else 'IPv4'
            f.write(f"INSERT INTO `{isp_safe}_ips` (`ip_address`, `ip_type`) VALUES ('{cidr}', '{ip_type}');\n")

    # JSON
    with open(f"{output_dir}/{isp_safe}_ips.json", 'w') as f:
        entries = [{"ip_address": cidr, "ip_type": "IPv6" if ':' in cidr else "IPv4"} for cidr in all_merged]
        json.dump(entries, f, indent=2)

    # CSV
    with open(f"{output_dir}/{isp_safe}_ips.csv", 'w') as f:
        f.write('ip_address,ip_type\n')
        for cidr in all_merged:
            ip_type = 'IPv6' if ':' in cidr else 'IPv4'
            f.write(f'{cidr},{ip_type}\n')

    # Netset
    with open(f"{output_dir}/{isp_safe}.netset", 'w') as f:
        f.write(f"""# {isp_safe} IP ranges - ipset restore format (hash:net)
# Generated: {TODAY}
# IPv4: {len(v4_merged)} merged subnets
# IPv6: {len(v6_merged)} merged subnets
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# Load with: sudo ipset restore -! < {isp_safe}.netset
#
""")
        if v4_merged:
            f.write(f"create {isp_safe}_v4 hash:net family inet hashsize 4096 maxelem 1048576 -exist\n")
            f.write(f"flush {isp_safe}_v4\n")
            for cidr in v4_merged:
                f.write(f"add {isp_safe}_v4 {cidr}\n")

        if v6_merged:
            f.write(f"create {isp_safe}_v6 hash:net family inet6 hashsize 4096 maxelem 1048576 -exist\n")
            f.write(f"flush {isp_safe}_v6\n")
            for cidr in v6_merged:
                f.write(f"add {isp_safe}_v6 {cidr}\n")

    # Nftables allow
    with open(f"{output_dir}/nftables_{isp_safe}_allow.conf", 'w') as f:
        f.write(f"""# Korea IP Ranges - {isp_safe}
# Updated: {TODAY}
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# nftables allow rules for {isp_safe}

table inet filter_{isp_safe}_allow {{
  chain input {{
    type filter hook input priority 0; policy drop;
""")
        for cidr in all_merged:
            if ':' in cidr:
                f.write(f"    ip6 saddr {cidr} accept\n")
            else:
                f.write(f"    ip saddr {cidr} accept\n")
        f.write("  }\n}\n")

    # Nftables deny
    with open(f"{output_dir}/nftables_{isp_safe}_deny.conf", 'w') as f:
        f.write(f"""# Korea IP Ranges - {isp_safe}
# Updated: {TODAY}
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# nftables deny rules for {isp_safe}

table inet filter_{isp_safe}_deny {{
  chain input {{
    type filter hook input priority 0; policy accept;
""")
        for cidr in all_merged:
            if ':' in cidr:
                f.write(f"    ip6 saddr {cidr} drop\n")
            else:
                f.write(f"    ip saddr {cidr} drop\n")
        f.write("  }\n}\n")

    # Nginx allow
    with open(f"{output_dir}/nginx_{isp_safe}_allow.conf", 'w') as f:
        f.write(f"""# Korea IP Ranges - {isp_safe}
# Updated: {TODAY}
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# include /path/to/nginx_{isp_safe}_allow.conf;

""")
        for cidr in all_merged:
            f.write(f"allow {cidr};\n")
        f.write("deny all;\n")

    # Nginx deny
    with open(f"{output_dir}/nginx_{isp_safe}_deny.conf", 'w') as f:
        f.write(f"""# Korea IP Ranges - {isp_safe}
# Updated: {TODAY}
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# include /path/to/nginx_{isp_safe}_deny.conf;

""")
        for cidr in all_merged:
            f.write(f"deny {cidr};\n")
        f.write("allow all;\n")

    # UFW allow
    with open(f"{output_dir}/ufw_{isp_safe}_allow.sh", 'w') as f:
        f.write(f"""#!/bin/bash
# Korea IP Ranges - {isp_safe}
# Updated: {TODAY}
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# UFW allow rules for {isp_safe}

""")
        for cidr in all_merged:
            f.write(f"ufw allow from {cidr}\n")
    os.chmod(f"{output_dir}/ufw_{isp_safe}_allow.sh", 0o755)

    # UFW deny
    with open(f"{output_dir}/ufw_{isp_safe}_deny.sh", 'w') as f:
        f.write(f"""#!/bin/bash
# Korea IP Ranges - {isp_safe}
# Updated: {TODAY}
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# UFW deny rules for {isp_safe}

""")
        for cidr in all_merged:
            f.write(f"ufw deny from {cidr}\n")
    os.chmod(f"{output_dir}/ufw_{isp_safe}_deny.sh", 0o755)

    # Metadata
    combined_content = '\n'.join(all_merged).encode()
    sha256 = hashlib.sha256(combined_content).hexdigest()

    meta = {
        "provider": isp_safe,
        "country": "KR",
        "generated_date": TODAY,
        "sources": [SOURCE_IPV4, SOURCE_IPV6],
        "ipv4": {
            "cidrs": len(v4_unmerged),
            "merged_cidrs": len(v4_merged)
        },
        "ipv6": {
            "cidrs": len(v6_unmerged),
            "merged_cidrs": len(v6_merged)
        },
        "total_entries": len(all_unmerged),
        "content_sha256": sha256,
        "license": "CC0-1.0",
        "license_url": "https://github.com/nikescar/korea-ip-ranges/blob/main/LICENSE",
        "inspiration": "https://github.com/rezmoss/cloud-provider-ip-addresses"
    }

    with open(f"{output_dir}/{isp_safe}_meta.json", 'w') as f:
        json.dump(meta, f, indent=2)

def main():
    # Read ISP list
    with open(f"{TEMP_DIR}/isp-list.txt") as f:
        isps = [line.strip() for line in f if line.strip()]

    output_dir = Path(OUTPUT_DIR) / "korea"
    output_dir.mkdir(exist_ok=True)

    print(f"[{TODAY}] Generating formats for {len(isps)} ISPs...", file=sys.stderr)

    for i, isp in enumerate(isps, 1):
        isp_safe = normalize_isp_name(isp)
        print(f"[{TODAY}] {i}/{len(isps)}: Processing {isp} ({isp_safe})...", file=sys.stderr)

        try:
            generate_all_formats(isp, isp_safe, str(output_dir))
        except Exception as e:
            print(f"  ERROR: {e}", file=sys.stderr)
            continue

    print(f"[{TODAY}] ISP format generation complete", file=sys.stderr)

if __name__ == "__main__":
    main()

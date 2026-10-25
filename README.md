# Korea IP Ranges

Automatically updated Korean IP address ranges from KRNIC (Korea Network Information Center), available in multiple formats for firewall configurations, IP filtering, and network analysis.

> **Inspired by** [cloud-provider-ip-addresses](https://github.com/rezmoss/cloud-provider-ip-addresses) - This project adopts similar format patterns and automation approaches for Korean IP ranges.

## Data Source

- **IPv4**: https://xn--3e0bx5euxnjje69i70af08bea817g.xn--3e0b707e/jsp/business/management/isCurrentIpv4.jsp
- **IPv6**: https://xn--3e0bx5euxnjje69i70af08bea817g.xn--3e0b707e/jsp/business/management/isCurrentIpv6.jsp

Updated monthly on the 1st day via GitHub Actions.

## File Structure

```
.
├── korea_ips_merged.txt          # All Korea IPs (IPv4 + IPv6), merged
├── korea_ips_merged_v4.txt       # Korea IPv4 only, merged
├── korea_ips_merged_v6.txt       # Korea IPv6 only, merged
├── korea_ips.txt                 # All Korea IPs, unmerged
├── korea_ips.sql                 # SQL INSERT statements
├── korea_ips.json                # JSON format
├── korea_ips.csv                 # CSV format
├── korea.netset                  # ipset restore format
├── korea_meta.json               # Metadata (counts, dates, SHA256)
├── nftables_korea_allow.conf     # nftables allow rules
├── nftables_korea_deny.conf      # nftables deny rules
├── nginx_korea_allow.conf        # nginx allow rules
├── nginx_korea_deny.conf         # nginx deny rules
├── ufw_korea_allow.sh            # UFW allow script
├── ufw_korea_deny.sh             # UFW deny script
└── korea/                        # Per-ISP files
    ├── {isp}_ips_merged_v4.txt
    ├── {isp}_ips_merged_v6.txt
    ├── {isp}_ips.txt
    ├── {isp}_ips.sql
    ├── {isp}_ips.json
    ├── {isp}_ips.csv
    ├── {isp}.netset
    ├── {isp}_meta.json
    ├── nftables_{isp}_allow.conf
    ├── nftables_{isp}_deny.conf
    ├── nginx_{isp}_allow.conf
    ├── nginx_{isp}_deny.conf
    ├── ufw_{isp}_allow.sh
    └── ufw_{isp}_deny.sh
```

## Usage Examples

### nftables

**Allow only Korea IPs:**
```bash
sudo nft -f nftables_korea_allow.conf
```

**Block Korea IPs:**
```bash
sudo nft -f nftables_korea_deny.conf
```

### nginx

**Restrict access to Korea IPs only:**
```nginx
server {
    listen 80;
    server_name example.com;
    
    include /path/to/nginx_korea_allow.conf;
    
    # Your config here
}
```

**Block Korea IPs:**
```nginx
server {
    listen 80;
    server_name example.com;
    
    include /path/to/nginx_korea_deny.conf;
    
    # Your config here
}
```

### UFW (Ubuntu Firewall)

**Allow Korea IPs:**
```bash
bash ufw_korea_allow.sh
```

**Block Korea IPs:**
```bash
bash ufw_korea_deny.sh
```

### ipset

**Load Korea IPs into ipset:**
```bash
sudo ipset restore -! < korea.netset
```

**Use in iptables:**
```bash
# Allow Korea IPs
sudo iptables -A INPUT -m set --match-set korea_v4 src -j ACCEPT
sudo ip6tables -A INPUT -m set --match-set korea_v6 src -j ACCEPT

# Block Korea IPs
sudo iptables -A INPUT -m set --match-set korea_v4 src -j DROP
sudo ip6tables -A INPUT -m set --match-set korea_v6 src -j DROP
```

### SQL Database

**Import into MySQL/MariaDB:**
```bash
mysql -u root -p your_database < korea_ips.sql
```

**Query example:**
```sql
SELECT * FROM korea_ips WHERE ip_type = 'IPv4' LIMIT 10;
```

### JSON/CSV

Use `korea_ips.json` or `korea_ips.csv` for programmatic access, analytics, or importing into other tools.

## Per-ISP Files

Each Korean ISP has dedicated files in the `korea/` directory. Example for "ABCLE":

```
korea/abcle_ips_merged_v4.txt
korea/abcle_ips_merged_v6.txt
korea/abcle_ips.txt
korea/abcle_ips.sql
korea/abcle_ips.json
korea/abcle_ips.csv
korea/abcle.netset
korea/abcle_meta.json
korea/nftables_abcle_allow.conf
korea/nftables_abcle_deny.conf
korea/nginx_abcle_allow.conf
korea/nginx_abcle_deny.conf
korea/ufw_abcle_allow.sh
korea/ufw_abcle_deny.sh
```

## Metadata

Each `*_meta.json` file contains:
- Provider/ISP name
- Generation date
- Source URLs
- IPv4/IPv6 counts (original and merged)
- Content SHA256 checksum
- License information

Example:
```json
{
  "provider": "korea",
  "country": "KR",
  "generated_date": "2026-10-25",
  "sources": [
    "https://xn--3e0bx5euxnjje69i70af08bea817g.xn--3e0b707e/jsp/business/management/isCurrentIpv4.jsp",
    "https://xn--3e0bx5euxnjje69i70af08bea817g.xn--3e0b707e/jsp/business/management/isCurrentIpv6.jsp"
  ],
  "ipv4": {
    "cidrs": 12450,
    "merged_cidrs": 8921
  },
  "ipv6": {
    "cidrs": 3421,
    "merged_cidrs": 2845
  },
  "total_entries": 15871,
  "content_sha256": "abc123...",
  "license": "CC0-1.0"
}
```

## Manual Update

To update the IP ranges manually:

1. Install dependencies:
   ```bash
   # Install Rust (for html-table-csv-converter)
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   
   # Install html-table-csv-converter
   cargo install --git https://github.com/nikescar/html-table-csv-converter.git
   
   # Install Python netaddr
   pip install netaddr
   ```

2. Run update scripts:
   ```bash
   export TEMP_DIR=/tmp/korea-ip-ranges
   export OUTPUT_DIR=.
   
   bash .github/scripts/download.sh
   bash .github/scripts/convert.sh
   bash .github/scripts/merge.sh
   bash .github/scripts/generate-formats.sh
   ```

## Automation

This repository uses GitHub Actions to automatically update IP ranges monthly on the 1st day at 02:00 UTC.

Workflow: `.github/workflows/update-korea-ips.yml`

Trigger manual update: Go to **Actions** → **Update Korea IP Ranges** → **Run workflow**

## License

CC0-1.0 (Public Domain)

The data is sourced from KRNIC (Korea Network Information Center), a public registry. This repository aggregates and reformats the data for convenience.

## Acknowledgments

This project is inspired by [rezmoss/cloud-provider-ip-addresses](https://github.com/rezmoss/cloud-provider-ip-addresses), which provides IP ranges for major cloud providers in multiple formats. We adopted similar output formats and automation patterns for Korean IP ranges.

## Related Projects

- [cloud-provider-ip-addresses](https://github.com/rezmoss/cloud-provider-ip-addresses) - IP ranges for AWS, Azure, Google Cloud, etc. (inspiration for this project)
- [html-table-csv-converter](https://github.com/nikescar/html-table-csv-converter) - Tool used to fetch data from KRNIC

## Contributing

Issues and pull requests welcome.

## Disclaimer

This data is provided as-is. Verify critical IP ranges independently. Not affiliated with KRNIC.

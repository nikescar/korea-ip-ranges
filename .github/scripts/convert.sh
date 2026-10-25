#!/bin/bash
# Convert IP ranges to CIDR notation

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

TEMP_DIR="${TEMP_DIR:-/tmp/korea-ip-ranges}"

log "Converting IPv4 ranges to CIDR..."

# Convert IPv4: 기관명,영문서비스명,시작주소,끝주소,개수(/24),할당일
python3 <<'PYEOF' > "$TEMP_DIR/korea-ipv4-cidrs.txt"
import sys
from netaddr import IPRange, IPAddress

with open('/tmp/korea-ip-ranges/korea-ipv4.csv', 'r') as f:
    lines = f.readlines()

# Skip header
for line in lines[1:]:
    parts = line.strip().split(',')
    if len(parts) < 6:
        continue

    org_kr = parts[0]
    org_en = parts[1]
    start_ip = parts[2]
    end_ip = parts[3]

    try:
        # Convert IP range to CIDR blocks
        ip_range = IPRange(start_ip, end_ip)
        for cidr in ip_range.cidrs():
            print(f"{org_en}|{cidr}")
    except Exception as e:
        print(f"ERROR: {line.strip()}: {e}", file=sys.stderr)
        continue
PYEOF

log "Converting IPv6 ranges to CIDR..."

# Convert IPv6: 기관명,영문서비스명,시작주소,프리픽스,개수,할당일
python3 <<'PYEOF' > "$TEMP_DIR/korea-ipv6-cidrs.txt"
import sys

with open('/tmp/korea-ip-ranges/korea-ipv6.csv', 'r') as f:
    lines = f.readlines()

# Skip header
for line in lines[1:]:
    parts = line.strip().split(',')
    if len(parts) < 6:
        continue

    org_kr = parts[0]
    org_en = parts[1]
    start_ip = parts[2]
    prefix = parts[3]

    # IPv6 already in CIDR format
    cidr = f"{start_ip}{prefix}"
    print(f"{org_en}|{cidr}")
PYEOF

ipv4_cidrs=$(wc -l < "$TEMP_DIR/korea-ipv4-cidrs.txt")
ipv6_cidrs=$(wc -l < "$TEMP_DIR/korea-ipv6-cidrs.txt")

log "Converted IPv4: $ipv4_cidrs CIDRs"
log "Converted IPv6: $ipv6_cidrs CIDRs"
log "Conversion complete"

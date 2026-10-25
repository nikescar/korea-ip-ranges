#!/bin/bash
# Merge overlapping/adjacent CIDR blocks

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

TEMP_DIR="${TEMP_DIR:-/tmp/korea-ip-ranges}"
OUTPUT_DIR="${OUTPUT_DIR:-.}"

log "Merging CIDRs by ISP..."

# Create ISP-specific files
python3 <<'PYEOF'
import sys
from netaddr import IPNetwork, cidr_merge
from collections import defaultdict

# Read IPv4 CIDRs
ipv4_by_isp = defaultdict(list)
with open('/tmp/korea-ip-ranges/korea-ipv4-cidrs.txt', 'r') as f:
    for line in f:
        if '|' not in line:
            continue
        isp, cidr = line.strip().split('|', 1)
        ipv4_by_isp[isp].append(IPNetwork(cidr))

# Read IPv6 CIDRs
ipv6_by_isp = defaultdict(list)
with open('/tmp/korea-ip-ranges/korea-ipv6-cidrs.txt', 'r') as f:
    for line in f:
        if '|' not in line:
            continue
        isp, cidr = line.strip().split('|', 1)
        ipv6_by_isp[isp].append(IPNetwork(cidr))

# Export ISP list
isps = sorted(set(list(ipv4_by_isp.keys()) + list(ipv6_by_isp.keys())))
with open('/tmp/korea-ip-ranges/isp-list.txt', 'w') as f:
    for isp in isps:
        f.write(f"{isp}\n")

# Merge and write per-ISP files
for isp in isps:
    isp_safe = isp.lower().replace('(', '').replace(')', '').replace(' ', '_')

    # Merged IPv4
    if isp in ipv4_by_isp:
        merged_v4 = cidr_merge(ipv4_by_isp[isp])
        with open(f'/tmp/korea-ip-ranges/{isp_safe}_merged_v4.txt', 'w') as f:
            for cidr in merged_v4:
                f.write(f"{cidr}\n")

    # Merged IPv6
    if isp in ipv6_by_isp:
        merged_v6 = cidr_merge(ipv6_by_isp[isp])
        with open(f'/tmp/korea-ip-ranges/{isp_safe}_merged_v6.txt', 'w') as f:
            for cidr in merged_v6:
                f.write(f"{cidr}\n")

    # Unmerged IPv4
    if isp in ipv4_by_isp:
        with open(f'/tmp/korea-ip-ranges/{isp_safe}_v4.txt', 'w') as f:
            for cidr in ipv4_by_isp[isp]:
                f.write(f"{cidr}\n")

    # Unmerged IPv6
    if isp in ipv6_by_isp:
        with open(f'/tmp/korea-ip-ranges/{isp_safe}_v6.txt', 'w') as f:
            for cidr in ipv6_by_isp[isp]:
                f.write(f"{cidr}\n")

# Consolidated country-level files
all_ipv4 = []
for isp_list in ipv4_by_isp.values():
    all_ipv4.extend(isp_list)

all_ipv6 = []
for isp_list in ipv6_by_isp.values():
    all_ipv6.extend(isp_list)

merged_all_v4 = cidr_merge(all_ipv4)
merged_all_v6 = cidr_merge(all_ipv6)

with open('/tmp/korea-ip-ranges/korea_merged_v4.txt', 'w') as f:
    for cidr in merged_all_v4:
        f.write(f"{cidr}\n")

with open('/tmp/korea-ip-ranges/korea_merged_v6.txt', 'w') as f:
    for cidr in merged_all_v6:
        f.write(f"{cidr}\n")

with open('/tmp/korea-ip-ranges/korea_v4.txt', 'w') as f:
    for cidr in all_ipv4:
        f.write(f"{cidr}\n")

with open('/tmp/korea-ip-ranges/korea_v6.txt', 'w') as f:
    for cidr in all_ipv6:
        f.write(f"{cidr}\n")

print(f"Processed {len(isps)} ISPs", file=sys.stderr)
PYEOF

log "Merge complete"

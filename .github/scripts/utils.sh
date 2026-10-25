#!/bin/bash
# Shared utility functions for Korea IP ranges processing

set -euo pipefail

# Normalize ISP name to safe filename
# Matches Python normalization in merge.sh: keep hyphens, remove parens, spaces -> underscores
normalize_isp_name() {
    local isp_english="$1"
    echo "$isp_english" | tr '[:upper:]' '[:lower:]' | sed 's/(//g; s/)//g; s/ /_/g'
}

# Log with timestamp
log() {
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] $*" >&2
}

# Get current date in ISO format
current_date() {
    date +'%Y-%m-%d'
}

# Calculate SHA256 of file
file_sha256() {
    sha256sum "$1" | awk '{print $1}'
}

# Count unique IPs in CIDR list
count_ips_v4() {
    local file="$1"
    python3 -c "
import sys
from netaddr import IPNetwork
total = sum(len(IPNetwork(line.strip())) for line in open('$file') if line.strip())
print(total)
"
}

# Export functions
export -f normalize_isp_name
export -f log
export -f current_date
export -f file_sha256
export -f count_ips_v4

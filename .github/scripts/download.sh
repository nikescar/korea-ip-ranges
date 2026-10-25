#!/bin/bash
# Download Korea IP allocation tables from KRNIC

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$SCRIPT_DIR/utils.sh"

IPV4_URL="https://xn--3e0bx5euxnjje69i70af08bea817g.xn--3e0b707e/jsp/business/management/isCurrentIpv4.jsp"
IPV6_URL="https://xn--3e0bx5euxnjje69i70af08bea817g.xn--3e0b707e/jsp/business/management/isCurrentIpv6.jsp"

TEMP_DIR="${TEMP_DIR:-/tmp/korea-ip-ranges}"
mkdir -p "$TEMP_DIR"

log "Downloading IPv4 allocations..."
html-table-csv-converter "$IPV4_URL" > "$TEMP_DIR/korea-ipv4.csv"

log "Downloading IPv6 allocations..."
html-table-csv-converter "$IPV6_URL" > "$TEMP_DIR/korea-ipv6.csv"

# Verify downloads
if [[ ! -s "$TEMP_DIR/korea-ipv4.csv" ]]; then
    log "ERROR: IPv4 download failed or empty"
    exit 1
fi

if [[ ! -s "$TEMP_DIR/korea-ipv6.csv" ]]; then
    log "ERROR: IPv6 download failed or empty"
    exit 1
fi

ipv4_lines=$(wc -l < "$TEMP_DIR/korea-ipv4.csv")
ipv6_lines=$(wc -l < "$TEMP_DIR/korea-ipv6.csv")

log "Downloaded IPv4: $ipv4_lines lines"
log "Downloaded IPv6: $ipv6_lines lines"
log "Download complete"

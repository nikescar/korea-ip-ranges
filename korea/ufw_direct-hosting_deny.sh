#!/bin/bash
# Korea IP Ranges - direct-hosting
# Updated: 2026-10-26
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# UFW deny rules for direct-hosting

ufw deny from 58.84.44.0/22
ufw deny from 103.4.148.0/22
ufw deny from 223.130.64.0/18
ufw deny from 2403:3700::/32

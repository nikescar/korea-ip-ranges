#!/bin/bash
# Korea IP Ranges - soop
# Updated: 2026-10-26
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# UFW deny rules for soop

ufw deny from 203.238.128.0/19
ufw deny from 2406:6600::/32

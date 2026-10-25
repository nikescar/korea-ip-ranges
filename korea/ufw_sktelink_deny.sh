#!/bin/bash
# Korea IP Ranges - sktelink
# Updated: 2026-10-26
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# UFW deny rules for sktelink

ufw deny from 210.93.192.0/19
ufw deny from 210.111.128.0/19
ufw deny from 210.115.96.0/19
ufw deny from 210.219.64.0/18
ufw deny from 211.39.0.0/18
ufw deny from 211.43.224.0/19
ufw deny from 211.173.192.0/18
ufw deny from 211.237.64.0/23
ufw deny from 211.237.66.0/24
ufw deny from 211.237.72.0/24
ufw deny from 211.237.76.0/23
ufw deny from 211.237.79.0/24
ufw deny from 2001:e98::/32

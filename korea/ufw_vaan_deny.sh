#!/bin/bash
# Korea IP Ranges - vaan
# Updated: 2026-10-26
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# UFW deny rules for vaan

ufw deny from 58.181.0.0/18
ufw deny from 112.136.128.0/17
ufw deny from 122.199.128.0/17
ufw deny from 211.45.96.0/19
ufw deny from 211.47.224.0/20
ufw deny from 211.56.224.0/19
ufw deny from 211.232.0.0/17
ufw deny from 211.232.128.0/18
ufw deny from 221.132.64.0/19
ufw deny from 2402:5800::/32

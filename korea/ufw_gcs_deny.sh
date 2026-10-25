#!/bin/bash
# Korea IP Ranges - gcs
# Updated: 2026-10-26
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# UFW deny rules for gcs

ufw deny from 27.113.0.0/17
ufw deny from 114.199.0.0/18
ufw deny from 119.17.0.0/19
ufw deny from 121.55.64.0/18
ufw deny from 121.55.128.0/18
ufw deny from 125.208.192.0/18
ufw deny from 2407:2000::/32

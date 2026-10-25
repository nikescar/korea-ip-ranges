#!/bin/bash
# Korea IP Ranges - lgtelecom
# Updated: 2026-10-26
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# UFW deny rules for lgtelecom

ufw deny from 106.96.0.0/13
ufw deny from 180.210.192.0/21
ufw deny from 203.82.240.0/21
ufw deny from 223.168.0.0/13
ufw deny from 2001:4430::/32

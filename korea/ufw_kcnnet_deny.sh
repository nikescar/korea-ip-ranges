#!/bin/bash
# Korea IP Ranges - kcnnet
# Updated: 2026-10-26
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# UFW deny rules for kcnnet

ufw deny from 61.110.128.0/22
ufw deny from 61.110.160.0/19
ufw deny from 103.20.116.0/22
ufw deny from 122.0.32.0/19
ufw deny from 124.46.128.0/17
ufw deny from 182.237.192.0/18
ufw deny from 2403:6300::/32

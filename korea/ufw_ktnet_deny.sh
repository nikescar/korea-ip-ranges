#!/bin/bash
# Korea IP Ranges - ktnet
# Updated: 2026-10-26
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# UFW deny rules for ktnet

ufw deny from 120.143.192.0/18
ufw deny from 203.233.192.0/19
ufw deny from 203.233.224.0/20
ufw deny from 203.242.128.0/17
ufw deny from 210.102.64.0/19
ufw deny from 210.111.192.0/19
ufw deny from 210.181.192.0/19
ufw deny from 210.205.64.0/19
ufw deny from 210.217.128.0/19
ufw deny from 211.37.192.0/19
ufw deny from 2001:eb8::/32

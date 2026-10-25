#!/bin/bash
# Korea IP Ranges - hostcenter
# Updated: 2026-10-26
# Source: Korea Network Information Center (KRNIC)
# License: CC0-1.0
# UFW deny rules for hostcenter

ufw deny from 27.255.64.0/19
ufw deny from 61.14.208.0/22
ufw deny from 61.97.240.0/20
ufw deny from 103.249.28.0/22
ufw deny from 180.150.224.0/21
ufw deny from 2407:b00::/32

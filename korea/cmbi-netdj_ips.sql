-- SQL script to create table `cmbi-netdj_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `cmbi-netdj_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `cmbi-netdj_ips` (`ip_address`, `ip_type`) VALUES ('45.64.144.0/22', 'IPv4');
INSERT INTO `cmbi-netdj_ips` (`ip_address`, `ip_type`) VALUES ('49.143.128.0/19', 'IPv4');
INSERT INTO `cmbi-netdj_ips` (`ip_address`, `ip_type`) VALUES ('49.143.160.0/20', 'IPv4');
INSERT INTO `cmbi-netdj_ips` (`ip_address`, `ip_type`) VALUES ('49.143.176.0/22', 'IPv4');
INSERT INTO `cmbi-netdj_ips` (`ip_address`, `ip_type`) VALUES ('49.143.188.0/22', 'IPv4');
INSERT INTO `cmbi-netdj_ips` (`ip_address`, `ip_type`) VALUES ('61.251.0.0/20', 'IPv4');
INSERT INTO `cmbi-netdj_ips` (`ip_address`, `ip_type`) VALUES ('103.234.4.0/22', 'IPv4');
INSERT INTO `cmbi-netdj_ips` (`ip_address`, `ip_type`) VALUES ('110.35.0.0/18', 'IPv4');
INSERT INTO `cmbi-netdj_ips` (`ip_address`, `ip_type`) VALUES ('124.195.160.0/19', 'IPv4');
INSERT INTO `cmbi-netdj_ips` (`ip_address`, `ip_type`) VALUES ('211.237.80.0/20', 'IPv4');
INSERT INTO `cmbi-netdj_ips` (`ip_address`, `ip_type`) VALUES ('211.238.160.0/20', 'IPv4');
INSERT INTO `cmbi-netdj_ips` (`ip_address`, `ip_type`) VALUES ('2403:6500::/32', 'IPv6');

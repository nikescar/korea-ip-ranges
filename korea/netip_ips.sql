-- SQL script to create table `netip_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `netip_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `netip_ips` (`ip_address`, `ip_type`) VALUES ('45.249.64.0/22', 'IPv4');
INSERT INTO `netip_ips` (`ip_address`, `ip_type`) VALUES ('49.143.192.0/20', 'IPv4');
INSERT INTO `netip_ips` (`ip_address`, `ip_type`) VALUES ('103.4.176.0/22', 'IPv4');
INSERT INTO `netip_ips` (`ip_address`, `ip_type`) VALUES ('118.67.160.0/19', 'IPv4');
INSERT INTO `netip_ips` (`ip_address`, `ip_type`) VALUES ('175.45.224.0/20', 'IPv4');
INSERT INTO `netip_ips` (`ip_address`, `ip_type`) VALUES ('211.39.192.0/19', 'IPv4');
INSERT INTO `netip_ips` (`ip_address`, `ip_type`) VALUES ('211.56.8.0/21', 'IPv4');
INSERT INTO `netip_ips` (`ip_address`, `ip_type`) VALUES ('211.174.96.0/19', 'IPv4');
INSERT INTO `netip_ips` (`ip_address`, `ip_type`) VALUES ('211.188.0.0/20', 'IPv4');
INSERT INTO `netip_ips` (`ip_address`, `ip_type`) VALUES ('211.188.104.0/21', 'IPv4');
INSERT INTO `netip_ips` (`ip_address`, `ip_type`) VALUES ('211.188.112.0/20', 'IPv4');
INSERT INTO `netip_ips` (`ip_address`, `ip_type`) VALUES ('211.233.128.0/20', 'IPv4');
INSERT INTO `netip_ips` (`ip_address`, `ip_type`) VALUES ('211.255.128.0/21', 'IPv4');
INSERT INTO `netip_ips` (`ip_address`, `ip_type`) VALUES ('211.255.144.0/20', 'IPv4');
INSERT INTO `netip_ips` (`ip_address`, `ip_type`) VALUES ('223.255.192.0/21', 'IPv4');
INSERT INTO `netip_ips` (`ip_address`, `ip_type`) VALUES ('2405:5f00::/32', 'IPv6');

-- SQL script to create table `cmbi-nethk_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `cmbi-nethk_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `cmbi-nethk_ips` (`ip_address`, `ip_type`) VALUES ('103.66.188.0/22', 'IPv4');
INSERT INTO `cmbi-nethk_ips` (`ip_address`, `ip_type`) VALUES ('103.246.172.0/22', 'IPv4');
INSERT INTO `cmbi-nethk_ips` (`ip_address`, `ip_type`) VALUES ('116.255.64.0/18', 'IPv4');
INSERT INTO `cmbi-nethk_ips` (`ip_address`, `ip_type`) VALUES ('124.195.224.0/19', 'IPv4');
INSERT INTO `cmbi-nethk_ips` (`ip_address`, `ip_type`) VALUES ('180.233.192.0/18', 'IPv4');
INSERT INTO `cmbi-nethk_ips` (`ip_address`, `ip_type`) VALUES ('2404:2300::/32', 'IPv6');

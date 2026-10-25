-- SQL script to create table `ktnet_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `ktnet_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `ktnet_ips` (`ip_address`, `ip_type`) VALUES ('120.143.192.0/18', 'IPv4');
INSERT INTO `ktnet_ips` (`ip_address`, `ip_type`) VALUES ('203.233.192.0/19', 'IPv4');
INSERT INTO `ktnet_ips` (`ip_address`, `ip_type`) VALUES ('203.233.224.0/20', 'IPv4');
INSERT INTO `ktnet_ips` (`ip_address`, `ip_type`) VALUES ('203.242.128.0/17', 'IPv4');
INSERT INTO `ktnet_ips` (`ip_address`, `ip_type`) VALUES ('210.102.64.0/19', 'IPv4');
INSERT INTO `ktnet_ips` (`ip_address`, `ip_type`) VALUES ('210.111.192.0/19', 'IPv4');
INSERT INTO `ktnet_ips` (`ip_address`, `ip_type`) VALUES ('210.181.192.0/19', 'IPv4');
INSERT INTO `ktnet_ips` (`ip_address`, `ip_type`) VALUES ('210.205.64.0/19', 'IPv4');
INSERT INTO `ktnet_ips` (`ip_address`, `ip_type`) VALUES ('210.217.128.0/19', 'IPv4');
INSERT INTO `ktnet_ips` (`ip_address`, `ip_type`) VALUES ('211.37.192.0/19', 'IPv4');
INSERT INTO `ktnet_ips` (`ip_address`, `ip_type`) VALUES ('2001:eb8::/32', 'IPv6');

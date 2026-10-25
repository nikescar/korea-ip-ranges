-- SQL script to create table `nibdigital_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `nibdigital_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `nibdigital_ips` (`ip_address`, `ip_type`) VALUES ('103.11.44.0/22', 'IPv4');
INSERT INTO `nibdigital_ips` (`ip_address`, `ip_type`) VALUES ('115.126.192.0/18', 'IPv4');
INSERT INTO `nibdigital_ips` (`ip_address`, `ip_type`) VALUES ('118.103.192.0/19', 'IPv4');
INSERT INTO `nibdigital_ips` (`ip_address`, `ip_type`) VALUES ('150.107.80.0/22', 'IPv4');
INSERT INTO `nibdigital_ips` (`ip_address`, `ip_type`) VALUES ('183.91.192.0/18', 'IPv4');
INSERT INTO `nibdigital_ips` (`ip_address`, `ip_type`) VALUES ('203.128.160.0/19', 'IPv4');
INSERT INTO `nibdigital_ips` (`ip_address`, `ip_type`) VALUES ('203.212.96.0/19', 'IPv4');
INSERT INTO `nibdigital_ips` (`ip_address`, `ip_type`) VALUES ('210.111.160.0/19', 'IPv4');
INSERT INTO `nibdigital_ips` (`ip_address`, `ip_type`) VALUES ('211.112.64.0/19', 'IPv4');
INSERT INTO `nibdigital_ips` (`ip_address`, `ip_type`) VALUES ('211.235.32.0/19', 'IPv4');
INSERT INTO `nibdigital_ips` (`ip_address`, `ip_type`) VALUES ('211.238.64.0/19', 'IPv4');
INSERT INTO `nibdigital_ips` (`ip_address`, `ip_type`) VALUES ('2407:b800::/32', 'IPv6');

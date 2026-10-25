-- SQL script to create table `elimnet_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `elimnet_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `elimnet_ips` (`ip_address`, `ip_type`) VALUES ('49.239.128.0/18', 'IPv4');
INSERT INTO `elimnet_ips` (`ip_address`, `ip_type`) VALUES ('61.106.32.0/19', 'IPv4');
INSERT INTO `elimnet_ips` (`ip_address`, `ip_type`) VALUES ('203.239.128.0/18', 'IPv4');
INSERT INTO `elimnet_ips` (`ip_address`, `ip_type`) VALUES ('210.102.0.0/19', 'IPv4');
INSERT INTO `elimnet_ips` (`ip_address`, `ip_type`) VALUES ('210.112.224.0/19', 'IPv4');
INSERT INTO `elimnet_ips` (`ip_address`, `ip_type`) VALUES ('210.118.0.0/19', 'IPv4');
INSERT INTO `elimnet_ips` (`ip_address`, `ip_type`) VALUES ('210.180.32.0/19', 'IPv4');
INSERT INTO `elimnet_ips` (`ip_address`, `ip_type`) VALUES ('210.181.224.0/19', 'IPv4');
INSERT INTO `elimnet_ips` (`ip_address`, `ip_type`) VALUES ('210.219.192.0/18', 'IPv4');
INSERT INTO `elimnet_ips` (`ip_address`, `ip_type`) VALUES ('210.220.192.0/18', 'IPv4');
INSERT INTO `elimnet_ips` (`ip_address`, `ip_type`) VALUES ('211.36.0.0/18', 'IPv4');
INSERT INTO `elimnet_ips` (`ip_address`, `ip_type`) VALUES ('211.52.64.0/18', 'IPv4');
INSERT INTO `elimnet_ips` (`ip_address`, `ip_type`) VALUES ('211.112.0.0/18', 'IPv4');
INSERT INTO `elimnet_ips` (`ip_address`, `ip_type`) VALUES ('211.174.128.0/17', 'IPv4');
INSERT INTO `elimnet_ips` (`ip_address`, `ip_type`) VALUES ('211.240.0.0/17', 'IPv4');

-- SQL script to create table `ditizone_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `ditizone_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `ditizone_ips` (`ip_address`, `ip_type`) VALUES ('27.116.128.0/17', 'IPv4');
INSERT INTO `ditizone_ips` (`ip_address`, `ip_type`) VALUES ('49.238.64.0/18', 'IPv4');
INSERT INTO `ditizone_ips` (`ip_address`, `ip_type`) VALUES ('61.97.224.0/20', 'IPv4');
INSERT INTO `ditizone_ips` (`ip_address`, `ip_type`) VALUES ('113.199.0.0/17', 'IPv4');
INSERT INTO `ditizone_ips` (`ip_address`, `ip_type`) VALUES ('122.128.32.0/19', 'IPv4');
INSERT INTO `ditizone_ips` (`ip_address`, `ip_type`) VALUES ('125.252.0.0/18', 'IPv4');
INSERT INTO `ditizone_ips` (`ip_address`, `ip_type`) VALUES ('203.81.128.0/19', 'IPv4');
INSERT INTO `ditizone_ips` (`ip_address`, `ip_type`) VALUES ('203.128.192.0/19', 'IPv4');
INSERT INTO `ditizone_ips` (`ip_address`, `ip_type`) VALUES ('203.142.160.0/19', 'IPv4');
INSERT INTO `ditizone_ips` (`ip_address`, `ip_type`) VALUES ('210.97.160.0/19', 'IPv4');
INSERT INTO `ditizone_ips` (`ip_address`, `ip_type`) VALUES ('211.111.224.0/19', 'IPv4');
INSERT INTO `ditizone_ips` (`ip_address`, `ip_type`) VALUES ('211.112.96.0/19', 'IPv4');

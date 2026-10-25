-- SQL script to create table `kctvnet_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `kctvnet_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `kctvnet_ips` (`ip_address`, `ip_type`) VALUES ('43.227.120.0/22', 'IPv4');
INSERT INTO `kctvnet_ips` (`ip_address`, `ip_type`) VALUES ('61.245.176.0/20', 'IPv4');
INSERT INTO `kctvnet_ips` (`ip_address`, `ip_type`) VALUES ('103.226.76.0/22', 'IPv4');
INSERT INTO `kctvnet_ips` (`ip_address`, `ip_type`) VALUES ('111.91.144.0/20', 'IPv4');
INSERT INTO `kctvnet_ips` (`ip_address`, `ip_type`) VALUES ('111.91.160.0/19', 'IPv4');
INSERT INTO `kctvnet_ips` (`ip_address`, `ip_type`) VALUES ('119.77.96.0/19', 'IPv4');
INSERT INTO `kctvnet_ips` (`ip_address`, `ip_type`) VALUES ('123.100.160.0/19', 'IPv4');

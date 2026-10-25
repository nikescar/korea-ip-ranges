-- SQL script to create table `cmbkwangjunet_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `cmbkwangjunet_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `cmbkwangjunet_ips` (`ip_address`, `ip_type`) VALUES ('49.246.0.0/17', 'IPv4');
INSERT INTO `cmbkwangjunet_ips` (`ip_address`, `ip_type`) VALUES ('103.10.92.0/22', 'IPv4');
INSERT INTO `cmbkwangjunet_ips` (`ip_address`, `ip_type`) VALUES ('103.10.216.0/22', 'IPv4');
INSERT INTO `cmbkwangjunet_ips` (`ip_address`, `ip_type`) VALUES ('112.121.192.0/18', 'IPv4');
INSERT INTO `cmbkwangjunet_ips` (`ip_address`, `ip_type`) VALUES ('112.133.128.0/18', 'IPv4');
INSERT INTO `cmbkwangjunet_ips` (`ip_address`, `ip_type`) VALUES ('120.29.128.0/20', 'IPv4');
INSERT INTO `cmbkwangjunet_ips` (`ip_address`, `ip_type`) VALUES ('122.128.64.0/20', 'IPv4');
INSERT INTO `cmbkwangjunet_ips` (`ip_address`, `ip_type`) VALUES ('150.242.144.0/22', 'IPv4');
INSERT INTO `cmbkwangjunet_ips` (`ip_address`, `ip_type`) VALUES ('2402:7000::/32', 'IPv6');
INSERT INTO `cmbkwangjunet_ips` (`ip_address`, `ip_type`) VALUES ('2406:b000::/32', 'IPv6');

-- SQL script to create table `haionnet_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `haionnet_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `haionnet_ips` (`ip_address`, `ip_type`) VALUES ('43.228.160.0/22', 'IPv4');
INSERT INTO `haionnet_ips` (`ip_address`, `ip_type`) VALUES ('49.254.0.0/16', 'IPv4');
INSERT INTO `haionnet_ips` (`ip_address`, `ip_type`) VALUES ('103.4.180.0/22', 'IPv4');
INSERT INTO `haionnet_ips` (`ip_address`, `ip_type`) VALUES ('115.144.0.0/16', 'IPv4');
INSERT INTO `haionnet_ips` (`ip_address`, `ip_type`) VALUES ('121.126.0.0/16', 'IPv4');
INSERT INTO `haionnet_ips` (`ip_address`, `ip_type`) VALUES ('124.198.0.0/17', 'IPv4');
INSERT INTO `haionnet_ips` (`ip_address`, `ip_type`) VALUES ('125.7.128.0/18', 'IPv4');
INSERT INTO `haionnet_ips` (`ip_address`, `ip_type`) VALUES ('183.78.128.0/19', 'IPv4');
INSERT INTO `haionnet_ips` (`ip_address`, `ip_type`) VALUES ('202.86.8.0/21', 'IPv4');
INSERT INTO `haionnet_ips` (`ip_address`, `ip_type`) VALUES ('202.126.112.0/21', 'IPv4');
INSERT INTO `haionnet_ips` (`ip_address`, `ip_type`) VALUES ('202.133.16.0/20', 'IPv4');
INSERT INTO `haionnet_ips` (`ip_address`, `ip_type`) VALUES ('203.109.0.0/19', 'IPv4');
INSERT INTO `haionnet_ips` (`ip_address`, `ip_type`) VALUES ('2404:800::/32', 'IPv6');

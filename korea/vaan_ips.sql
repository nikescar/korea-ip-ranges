-- SQL script to create table `vaan_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `vaan_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `vaan_ips` (`ip_address`, `ip_type`) VALUES ('58.181.0.0/18', 'IPv4');
INSERT INTO `vaan_ips` (`ip_address`, `ip_type`) VALUES ('112.136.128.0/17', 'IPv4');
INSERT INTO `vaan_ips` (`ip_address`, `ip_type`) VALUES ('122.199.128.0/17', 'IPv4');
INSERT INTO `vaan_ips` (`ip_address`, `ip_type`) VALUES ('211.45.96.0/19', 'IPv4');
INSERT INTO `vaan_ips` (`ip_address`, `ip_type`) VALUES ('211.47.224.0/20', 'IPv4');
INSERT INTO `vaan_ips` (`ip_address`, `ip_type`) VALUES ('211.56.224.0/19', 'IPv4');
INSERT INTO `vaan_ips` (`ip_address`, `ip_type`) VALUES ('211.232.0.0/17', 'IPv4');
INSERT INTO `vaan_ips` (`ip_address`, `ip_type`) VALUES ('211.232.128.0/18', 'IPv4');
INSERT INTO `vaan_ips` (`ip_address`, `ip_type`) VALUES ('221.132.64.0/19', 'IPv4');
INSERT INTO `vaan_ips` (`ip_address`, `ip_type`) VALUES ('2402:5800::/32', 'IPv6');

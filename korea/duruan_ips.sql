-- SQL script to create table `duruan_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `duruan_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `duruan_ips` (`ip_address`, `ip_type`) VALUES ('61.97.128.0/19', 'IPv4');
INSERT INTO `duruan_ips` (`ip_address`, `ip_type`) VALUES ('61.252.128.0/19', 'IPv4');
INSERT INTO `duruan_ips` (`ip_address`, `ip_type`) VALUES ('118.91.144.0/20', 'IPv4');
INSERT INTO `duruan_ips` (`ip_address`, `ip_type`) VALUES ('121.0.128.0/17', 'IPv4');
INSERT INTO `duruan_ips` (`ip_address`, `ip_type`) VALUES ('210.16.192.0/18', 'IPv4');
INSERT INTO `duruan_ips` (`ip_address`, `ip_type`) VALUES ('211.47.176.0/20', 'IPv4');
INSERT INTO `duruan_ips` (`ip_address`, `ip_type`) VALUES ('211.63.64.0/19', 'IPv4');
INSERT INTO `duruan_ips` (`ip_address`, `ip_type`) VALUES ('211.237.32.0/20', 'IPv4');
INSERT INTO `duruan_ips` (`ip_address`, `ip_type`) VALUES ('211.238.128.0/19', 'IPv4');
INSERT INTO `duruan_ips` (`ip_address`, `ip_type`) VALUES ('2001:390::/32', 'IPv6');

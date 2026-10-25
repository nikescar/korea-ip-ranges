-- SQL script to create table `kcnnet_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `kcnnet_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `kcnnet_ips` (`ip_address`, `ip_type`) VALUES ('61.110.128.0/22', 'IPv4');
INSERT INTO `kcnnet_ips` (`ip_address`, `ip_type`) VALUES ('61.110.160.0/19', 'IPv4');
INSERT INTO `kcnnet_ips` (`ip_address`, `ip_type`) VALUES ('103.20.116.0/22', 'IPv4');
INSERT INTO `kcnnet_ips` (`ip_address`, `ip_type`) VALUES ('122.0.32.0/19', 'IPv4');
INSERT INTO `kcnnet_ips` (`ip_address`, `ip_type`) VALUES ('124.46.128.0/17', 'IPv4');
INSERT INTO `kcnnet_ips` (`ip_address`, `ip_type`) VALUES ('182.237.192.0/18', 'IPv4');
INSERT INTO `kcnnet_ips` (`ip_address`, `ip_type`) VALUES ('2403:6300::/32', 'IPv6');

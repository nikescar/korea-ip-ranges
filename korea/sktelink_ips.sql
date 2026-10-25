-- SQL script to create table `sktelink_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `sktelink_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `sktelink_ips` (`ip_address`, `ip_type`) VALUES ('210.93.192.0/19', 'IPv4');
INSERT INTO `sktelink_ips` (`ip_address`, `ip_type`) VALUES ('210.111.128.0/19', 'IPv4');
INSERT INTO `sktelink_ips` (`ip_address`, `ip_type`) VALUES ('210.115.96.0/19', 'IPv4');
INSERT INTO `sktelink_ips` (`ip_address`, `ip_type`) VALUES ('210.219.64.0/18', 'IPv4');
INSERT INTO `sktelink_ips` (`ip_address`, `ip_type`) VALUES ('211.39.0.0/18', 'IPv4');
INSERT INTO `sktelink_ips` (`ip_address`, `ip_type`) VALUES ('211.43.224.0/19', 'IPv4');
INSERT INTO `sktelink_ips` (`ip_address`, `ip_type`) VALUES ('211.173.192.0/18', 'IPv4');
INSERT INTO `sktelink_ips` (`ip_address`, `ip_type`) VALUES ('211.237.64.0/23', 'IPv4');
INSERT INTO `sktelink_ips` (`ip_address`, `ip_type`) VALUES ('211.237.66.0/24', 'IPv4');
INSERT INTO `sktelink_ips` (`ip_address`, `ip_type`) VALUES ('211.237.72.0/24', 'IPv4');
INSERT INTO `sktelink_ips` (`ip_address`, `ip_type`) VALUES ('211.237.76.0/23', 'IPv4');
INSERT INTO `sktelink_ips` (`ip_address`, `ip_type`) VALUES ('211.237.79.0/24', 'IPv4');
INSERT INTO `sktelink_ips` (`ip_address`, `ip_type`) VALUES ('2001:e98::/32', 'IPv6');

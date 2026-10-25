-- SQL script to create table `egiosnet_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `egiosnet_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `egiosnet_ips` (`ip_address`, `ip_type`) VALUES ('103.231.128.0/22', 'IPv4');
INSERT INTO `egiosnet_ips` (`ip_address`, `ip_type`) VALUES ('211.47.160.0/22', 'IPv4');
INSERT INTO `egiosnet_ips` (`ip_address`, `ip_type`) VALUES ('2405:c000::/32', 'IPv6');

-- SQL script to create table `inet_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `inet_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `inet_ips` (`ip_address`, `ip_type`) VALUES ('210.116.64.0/18', 'IPv4');
INSERT INTO `inet_ips` (`ip_address`, `ip_type`) VALUES ('2001:f48::/32', 'IPv6');

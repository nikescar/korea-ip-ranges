-- SQL script to create table `soop_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `soop_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `soop_ips` (`ip_address`, `ip_type`) VALUES ('203.238.128.0/19', 'IPv4');
INSERT INTO `soop_ips` (`ip_address`, `ip_type`) VALUES ('2406:6600::/32', 'IPv6');

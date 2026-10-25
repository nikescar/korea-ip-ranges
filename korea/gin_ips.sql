-- SQL script to create table `gin_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `gin_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `gin_ips` (`ip_address`, `ip_type`) VALUES ('61.251.96.0/20', 'IPv4');
INSERT INTO `gin_ips` (`ip_address`, `ip_type`) VALUES ('2001:d38::/32', 'IPv6');

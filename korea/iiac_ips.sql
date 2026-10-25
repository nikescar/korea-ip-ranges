-- SQL script to create table `iiac_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `iiac_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `iiac_ips` (`ip_address`, `ip_type`) VALUES ('116.84.0.0/16', 'IPv4');
INSERT INTO `iiac_ips` (`ip_address`, `ip_type`) VALUES ('2400:a0a0::/32', 'IPv6');

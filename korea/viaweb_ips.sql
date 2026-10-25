-- SQL script to create table `viaweb_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `viaweb_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `viaweb_ips` (`ip_address`, `ip_type`) VALUES ('43.246.152.0/22', 'IPv4');
INSERT INTO `viaweb_ips` (`ip_address`, `ip_type`) VALUES ('103.194.252.0/22', 'IPv4');

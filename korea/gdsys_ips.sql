-- SQL script to create table `gdsys_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `gdsys_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `gdsys_ips` (`ip_address`, `ip_type`) VALUES ('103.240.48.0/22', 'IPv4');
INSERT INTO `gdsys_ips` (`ip_address`, `ip_type`) VALUES ('180.131.0.0/18', 'IPv4');
INSERT INTO `gdsys_ips` (`ip_address`, `ip_type`) VALUES ('183.86.192.0/18', 'IPv4');
INSERT INTO `gdsys_ips` (`ip_address`, `ip_type`) VALUES ('202.90.252.0/22', 'IPv4');

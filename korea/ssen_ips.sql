-- SQL script to create table `ssen_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `ssen_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `ssen_ips` (`ip_address`, `ip_type`) VALUES ('175.45.160.0/21', 'IPv4');
INSERT INTO `ssen_ips` (`ip_address`, `ip_type`) VALUES ('182.173.160.0/20', 'IPv4');

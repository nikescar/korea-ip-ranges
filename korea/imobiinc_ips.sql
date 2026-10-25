-- SQL script to create table `imobiinc_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `imobiinc_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `imobiinc_ips` (`ip_address`, `ip_type`) VALUES ('119.30.128.0/18', 'IPv4');
INSERT INTO `imobiinc_ips` (`ip_address`, `ip_type`) VALUES ('157.119.36.0/22', 'IPv4');
INSERT INTO `imobiinc_ips` (`ip_address`, `ip_type`) VALUES ('160.30.232.0/23', 'IPv4');
INSERT INTO `imobiinc_ips` (`ip_address`, `ip_type`) VALUES ('202.68.224.0/19', 'IPv4');

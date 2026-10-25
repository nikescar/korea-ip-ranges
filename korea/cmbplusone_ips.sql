-- SQL script to create table `cmbplusone_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `cmbplusone_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `cmbplusone_ips` (`ip_address`, `ip_type`) VALUES ('110.34.64.0/18', 'IPv4');
INSERT INTO `cmbplusone_ips` (`ip_address`, `ip_type`) VALUES ('122.128.192.0/18', 'IPv4');

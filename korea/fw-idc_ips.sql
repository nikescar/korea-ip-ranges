-- SQL script to create table `fw-idc_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `fw-idc_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `fw-idc_ips` (`ip_address`, `ip_type`) VALUES ('45.250.204.0/22', 'IPv4');
INSERT INTO `fw-idc_ips` (`ip_address`, `ip_type`) VALUES ('103.219.124.0/22', 'IPv4');

-- SQL script to create table `connectwave_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `connectwave_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `connectwave_ips` (`ip_address`, `ip_type`) VALUES ('14.129.0.0/16', 'IPv4');

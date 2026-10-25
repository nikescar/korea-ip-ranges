-- SQL script to create table `dreammark1_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `dreammark1_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `dreammark1_ips` (`ip_address`, `ip_type`) VALUES ('101.202.0.0/16', 'IPv4');
INSERT INTO `dreammark1_ips` (`ip_address`, `ip_type`) VALUES ('103.139.118.0/23', 'IPv4');

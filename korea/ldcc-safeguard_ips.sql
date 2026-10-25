-- SQL script to create table `ldcc-safeguard_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `ldcc-safeguard_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `ldcc-safeguard_ips` (`ip_address`, `ip_type`) VALUES ('103.235.24.0/22', 'IPv4');
INSERT INTO `ldcc-safeguard_ips` (`ip_address`, `ip_type`) VALUES ('124.243.0.0/17', 'IPv4');
INSERT INTO `ldcc-safeguard_ips` (`ip_address`, `ip_type`) VALUES ('125.60.64.0/19', 'IPv4');
INSERT INTO `ldcc-safeguard_ips` (`ip_address`, `ip_type`) VALUES ('150.129.224.0/22', 'IPv4');
INSERT INTO `ldcc-safeguard_ips` (`ip_address`, `ip_type`) VALUES ('210.93.128.0/18', 'IPv4');
INSERT INTO `ldcc-safeguard_ips` (`ip_address`, `ip_type`) VALUES ('223.253.0.0/16', 'IPv4');

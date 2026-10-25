-- SQL script to create table `koins_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `koins_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `koins_ips` (`ip_address`, `ip_type`) VALUES ('103.244.108.0/22', 'IPv4');
INSERT INTO `koins_ips` (`ip_address`, `ip_type`) VALUES ('114.31.112.0/20', 'IPv4');
INSERT INTO `koins_ips` (`ip_address`, `ip_type`) VALUES ('211.255.192.0/20', 'IPv4');

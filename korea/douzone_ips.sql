-- SQL script to create table `douzone_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `douzone_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `douzone_ips` (`ip_address`, `ip_type`) VALUES ('45.64.140.0/22', 'IPv4');
INSERT INTO `douzone_ips` (`ip_address`, `ip_type`) VALUES ('103.8.100.0/22', 'IPv4');
INSERT INTO `douzone_ips` (`ip_address`, `ip_type`) VALUES ('202.167.215.0/24', 'IPv4');
INSERT INTO `douzone_ips` (`ip_address`, `ip_type`) VALUES ('221.133.55.0/24', 'IPv4');

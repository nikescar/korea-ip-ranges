-- SQL script to create table `sbkoreacorp_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `sbkoreacorp_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `sbkoreacorp_ips` (`ip_address`, `ip_type`) VALUES ('103.124.100.0/22', 'IPv4');
INSERT INTO `sbkoreacorp_ips` (`ip_address`, `ip_type`) VALUES ('2400:fda6::/32', 'IPv6');

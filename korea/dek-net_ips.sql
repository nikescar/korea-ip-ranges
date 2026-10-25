-- SQL script to create table `dek-net_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `dek-net_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `dek-net_ips` (`ip_address`, `ip_type`) VALUES ('103.126.234.0/23', 'IPv4');
INSERT INTO `dek-net_ips` (`ip_address`, `ip_type`) VALUES ('2400:fd60::/32', 'IPv6');

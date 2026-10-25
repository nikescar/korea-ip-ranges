-- SQL script to create table `kdata_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `kdata_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('45.113.44.0/22', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('49.128.192.0/19', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('61.97.160.0/23', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.55.1.0/24', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.55.4.0/24', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.55.7.0/24', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.55.9.0/24', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.55.10.0/24', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.55.15.0/24', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.55.16.0/24', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.55.18.0/24', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.55.21.0/24', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.55.23.0/24', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.55.34.0/23', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.55.39.0/24', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.55.49.0/24', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.55.59.0/24', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.55.67.0/24', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.55.82.0/24', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('101.101.142.0/23', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('103.6.72.0/22', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('103.7.32.0/22', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('103.11.58.0/23', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('112.196.192.0/19', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('115.85.164.0/22', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('115.178.32.0/20', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('116.93.160.0/19', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('124.66.208.0/20', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('182.173.80.0/20', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('182.173.96.0/19', 'IPv4');
INSERT INTO `kdata_ips` (`ip_address`, `ip_type`) VALUES ('2406:6800::/32', 'IPv6');

-- SQL script to create table `indiclub_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `indiclub_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `indiclub_ips` (`ip_address`, `ip_type`) VALUES ('45.250.220.0/22', 'IPv4');
INSERT INTO `indiclub_ips` (`ip_address`, `ip_type`) VALUES ('61.251.176.0/20', 'IPv4');
INSERT INTO `indiclub_ips` (`ip_address`, `ip_type`) VALUES ('101.53.64.0/19', 'IPv4');
INSERT INTO `indiclub_ips` (`ip_address`, `ip_type`) VALUES ('103.9.128.0/22', 'IPv4');
INSERT INTO `indiclub_ips` (`ip_address`, `ip_type`) VALUES ('113.52.136.0/21', 'IPv4');
INSERT INTO `indiclub_ips` (`ip_address`, `ip_type`) VALUES ('175.176.128.0/20', 'IPv4');
INSERT INTO `indiclub_ips` (`ip_address`, `ip_type`) VALUES ('182.237.32.0/19', 'IPv4');
INSERT INTO `indiclub_ips` (`ip_address`, `ip_type`) VALUES ('203.173.96.0/19', 'IPv4');
INSERT INTO `indiclub_ips` (`ip_address`, `ip_type`) VALUES ('210.4.88.0/21', 'IPv4');

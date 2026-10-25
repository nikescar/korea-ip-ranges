-- SQL script to create table `kinxinc_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `kinxinc_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('1.201.0.0/16', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('61.106.224.0/20', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('61.251.16.0/20', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('103.6.100.0/22', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('121.50.64.0/18', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('121.78.0.0/16', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('122.49.64.0/19', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('122.49.96.0/20', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('139.150.0.0/18', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('139.150.96.0/19', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('139.150.128.0/17', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('182.161.96.0/19', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('202.31.155.0/24', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('203.84.240.0/20', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('203.236.192.0/18', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('203.238.176.0/20', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('203.246.160.0/20', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('210.97.240.0/20', 'IPv4');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('2001:7fa:8::/48', 'IPv6');
INSERT INTO `kinxinc_ips` (`ip_address`, `ip_type`) VALUES ('2401:2700::/32', 'IPv6');

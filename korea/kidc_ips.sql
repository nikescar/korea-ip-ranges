-- SQL script to create table `kidc_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `kidc_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('43.230.80.0/22', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('61.5.160.0/19', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('61.101.244.0/22', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('61.111.0.0/18', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('103.226.96.0/22', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('110.45.128.0/17', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('114.108.128.0/18', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('117.52.0.0/16', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('121.254.128.0/17', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('182.162.0.0/16', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('202.43.48.0/20', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('210.97.192.0/22', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('210.217.192.0/19', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('211.43.192.0/19', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('211.115.64.0/18', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('211.172.240.0/20', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('211.174.48.0/20', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('211.233.0.0/18', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('211.233.64.0/19', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('211.234.96.0/19', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('211.237.0.0/20', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('211.254.252.0/22', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('222.231.0.0/18', 'IPv4');
INSERT INTO `kidc_ips` (`ip_address`, `ip_type`) VALUES ('2001:ed0::/32', 'IPv6');

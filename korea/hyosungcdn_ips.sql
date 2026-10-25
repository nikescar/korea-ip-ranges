-- SQL script to create table `hyosungcdn_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `hyosungcdn_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `hyosungcdn_ips` (`ip_address`, `ip_type`) VALUES ('49.236.128.0/22', 'IPv4');
INSERT INTO `hyosungcdn_ips` (`ip_address`, `ip_type`) VALUES ('49.236.168.0/21', 'IPv4');
INSERT INTO `hyosungcdn_ips` (`ip_address`, `ip_type`) VALUES ('49.236.176.0/20', 'IPv4');
INSERT INTO `hyosungcdn_ips` (`ip_address`, `ip_type`) VALUES ('103.79.132.0/22', 'IPv4');
INSERT INTO `hyosungcdn_ips` (`ip_address`, `ip_type`) VALUES ('110.93.128.0/20', 'IPv4');
INSERT INTO `hyosungcdn_ips` (`ip_address`, `ip_type`) VALUES ('110.93.160.0/19', 'IPv4');
INSERT INTO `hyosungcdn_ips` (`ip_address`, `ip_type`) VALUES ('114.31.32.0/19', 'IPv4');
INSERT INTO `hyosungcdn_ips` (`ip_address`, `ip_type`) VALUES ('114.141.24.0/21', 'IPv4');
INSERT INTO `hyosungcdn_ips` (`ip_address`, `ip_type`) VALUES ('182.173.176.0/22', 'IPv4');
INSERT INTO `hyosungcdn_ips` (`ip_address`, `ip_type`) VALUES ('2407:3500::/32', 'IPv6');

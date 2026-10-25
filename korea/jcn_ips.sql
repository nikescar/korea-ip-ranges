-- SQL script to create table `jcn_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `jcn_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `jcn_ips` (`ip_address`, `ip_type`) VALUES ('103.11.248.0/22', 'IPv4');
INSERT INTO `jcn_ips` (`ip_address`, `ip_type`) VALUES ('103.68.96.0/22', 'IPv4');
INSERT INTO `jcn_ips` (`ip_address`, `ip_type`) VALUES ('112.109.32.0/19', 'IPv4');
INSERT INTO `jcn_ips` (`ip_address`, `ip_type`) VALUES ('113.192.64.0/18', 'IPv4');
INSERT INTO `jcn_ips` (`ip_address`, `ip_type`) VALUES ('116.212.0.0/19', 'IPv4');
INSERT INTO `jcn_ips` (`ip_address`, `ip_type`) VALUES ('124.216.0.0/16', 'IPv4');
INSERT INTO `jcn_ips` (`ip_address`, `ip_type`) VALUES ('180.211.0.0/18', 'IPv4');
INSERT INTO `jcn_ips` (`ip_address`, `ip_type`) VALUES ('182.161.128.0/17', 'IPv4');
INSERT INTO `jcn_ips` (`ip_address`, `ip_type`) VALUES ('2402:1a00::/32', 'IPv6');

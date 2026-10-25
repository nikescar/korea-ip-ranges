-- SQL script to create table `abcle_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `abcle_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('101.79.0.0/22', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('101.79.72.0/22', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('101.79.136.0/23', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('101.79.240.0/21', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('101.79.248.0/22', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('101.79.254.0/23', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('110.4.88.0/22', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('110.4.104.0/22', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('180.210.60.0/22', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('182.252.140.0/22', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('182.252.176.0/21', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('210.4.220.0/22', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('211.172.228.0/22', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('211.172.232.0/22', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('211.236.160.0/22', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('211.236.168.0/21', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('211.236.180.0/22', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('211.236.184.0/21', 'IPv4');
INSERT INTO `abcle_ips` (`ip_address`, `ip_type`) VALUES ('2001:ef8::/32', 'IPv6');

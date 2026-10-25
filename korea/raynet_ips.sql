-- SQL script to create table `raynet_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `raynet_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `raynet_ips` (`ip_address`, `ip_type`) VALUES ('122.129.240.0/20', 'IPv4');
INSERT INTO `raynet_ips` (`ip_address`, `ip_type`) VALUES ('211.111.160.0/24', 'IPv4');
INSERT INTO `raynet_ips` (`ip_address`, `ip_type`) VALUES ('211.111.165.0/24', 'IPv4');
INSERT INTO `raynet_ips` (`ip_address`, `ip_type`) VALUES ('211.111.172.0/23', 'IPv4');
INSERT INTO `raynet_ips` (`ip_address`, `ip_type`) VALUES ('211.238.34.0/24', 'IPv4');
INSERT INTO `raynet_ips` (`ip_address`, `ip_type`) VALUES ('211.238.38.0/23', 'IPv4');
INSERT INTO `raynet_ips` (`ip_address`, `ip_type`) VALUES ('211.238.40.0/24', 'IPv4');
INSERT INTO `raynet_ips` (`ip_address`, `ip_type`) VALUES ('211.238.42.0/24', 'IPv4');
INSERT INTO `raynet_ips` (`ip_address`, `ip_type`) VALUES ('211.238.47.0/24', 'IPv4');
INSERT INTO `raynet_ips` (`ip_address`, `ip_type`) VALUES ('211.238.176.0/23', 'IPv4');
INSERT INTO `raynet_ips` (`ip_address`, `ip_type`) VALUES ('211.238.179.0/24', 'IPv4');
INSERT INTO `raynet_ips` (`ip_address`, `ip_type`) VALUES ('211.238.192.0/24', 'IPv4');
INSERT INTO `raynet_ips` (`ip_address`, `ip_type`) VALUES ('211.238.197.0/24', 'IPv4');
INSERT INTO `raynet_ips` (`ip_address`, `ip_type`) VALUES ('211.238.199.0/24', 'IPv4');

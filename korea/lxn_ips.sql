-- SQL script to create table `lxn_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `lxn_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `lxn_ips` (`ip_address`, `ip_type`) VALUES ('49.238.128.0/17', 'IPv4');
INSERT INTO `lxn_ips` (`ip_address`, `ip_type`) VALUES ('61.252.16.0/20', 'IPv4');
INSERT INTO `lxn_ips` (`ip_address`, `ip_type`) VALUES ('103.11.24.0/22', 'IPv4');
INSERT INTO `lxn_ips` (`ip_address`, `ip_type`) VALUES ('103.27.128.0/22', 'IPv4');
INSERT INTO `lxn_ips` (`ip_address`, `ip_type`) VALUES ('106.10.0.0/19', 'IPv4');
INSERT INTO `lxn_ips` (`ip_address`, `ip_type`) VALUES ('106.10.64.0/18', 'IPv4');
INSERT INTO `lxn_ips` (`ip_address`, `ip_type`) VALUES ('110.44.32.0/19', 'IPv4');
INSERT INTO `lxn_ips` (`ip_address`, `ip_type`) VALUES ('122.99.128.0/17', 'IPv4');
INSERT INTO `lxn_ips` (`ip_address`, `ip_type`) VALUES ('202.158.144.0/20', 'IPv4');
INSERT INTO `lxn_ips` (`ip_address`, `ip_type`) VALUES ('203.216.160.0/19', 'IPv4');
INSERT INTO `lxn_ips` (`ip_address`, `ip_type`) VALUES ('210.112.160.0/20', 'IPv4');
INSERT INTO `lxn_ips` (`ip_address`, `ip_type`) VALUES ('210.205.112.0/20', 'IPv4');
INSERT INTO `lxn_ips` (`ip_address`, `ip_type`) VALUES ('223.26.128.0/17', 'IPv4');
INSERT INTO `lxn_ips` (`ip_address`, `ip_type`) VALUES ('2402:3100::/32', 'IPv6');

-- SQL script to create table `piranha_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `piranha_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `piranha_ips` (`ip_address`, `ip_type`) VALUES ('14.206.0.0/16', 'IPv4');
INSERT INTO `piranha_ips` (`ip_address`, `ip_type`) VALUES ('101.250.0.0/16', 'IPv4');
INSERT INTO `piranha_ips` (`ip_address`, `ip_type`) VALUES ('103.246.236.0/22', 'IPv4');
INSERT INTO `piranha_ips` (`ip_address`, `ip_type`) VALUES ('110.165.64.0/18', 'IPv4');
INSERT INTO `piranha_ips` (`ip_address`, `ip_type`) VALUES ('112.213.0.0/19', 'IPv4');
INSERT INTO `piranha_ips` (`ip_address`, `ip_type`) VALUES ('114.141.224.0/19', 'IPv4');
INSERT INTO `piranha_ips` (`ip_address`, `ip_type`) VALUES ('122.49.112.0/20', 'IPv4');
INSERT INTO `piranha_ips` (`ip_address`, `ip_type`) VALUES ('182.163.128.0/17', 'IPv4');
INSERT INTO `piranha_ips` (`ip_address`, `ip_type`) VALUES ('2402:f400::/32', 'IPv6');

-- SQL script to create table `hinetworks_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `hinetworks_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `hinetworks_ips` (`ip_address`, `ip_type`) VALUES ('211.47.128.0/22', 'IPv4');
INSERT INTO `hinetworks_ips` (`ip_address`, `ip_type`) VALUES ('211.116.224.0/19', 'IPv4');
INSERT INTO `hinetworks_ips` (`ip_address`, `ip_type`) VALUES ('211.189.128.0/19', 'IPv4');
INSERT INTO `hinetworks_ips` (`ip_address`, `ip_type`) VALUES ('211.237.128.0/20', 'IPv4');
INSERT INTO `hinetworks_ips` (`ip_address`, `ip_type`) VALUES ('211.241.128.0/17', 'IPv4');
INSERT INTO `hinetworks_ips` (`ip_address`, `ip_type`) VALUES ('211.254.0.0/17', 'IPv4');
INSERT INTO `hinetworks_ips` (`ip_address`, `ip_type`) VALUES ('218.36.0.0/17', 'IPv4');
INSERT INTO `hinetworks_ips` (`ip_address`, `ip_type`) VALUES ('2407:b200::/32', 'IPv6');

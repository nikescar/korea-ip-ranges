-- SQL script to create table `ulnetworks_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `ulnetworks_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `ulnetworks_ips` (`ip_address`, `ip_type`) VALUES ('27.125.0.0/17', 'IPv4');
INSERT INTO `ulnetworks_ips` (`ip_address`, `ip_type`) VALUES ('61.100.240.0/21', 'IPv4');
INSERT INTO `ulnetworks_ips` (`ip_address`, `ip_type`) VALUES ('113.197.80.0/20', 'IPv4');
INSERT INTO `ulnetworks_ips` (`ip_address`, `ip_type`) VALUES ('182.237.64.0/18', 'IPv4');
INSERT INTO `ulnetworks_ips` (`ip_address`, `ip_type`) VALUES ('211.235.192.0/19', 'IPv4');
INSERT INTO `ulnetworks_ips` (`ip_address`, `ip_type`) VALUES ('2405:4300::/32', 'IPv6');

-- SQL script to create table `triznnetworks_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `triznnetworks_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `triznnetworks_ips` (`ip_address`, `ip_type`) VALUES ('61.250.128.0/17', 'IPv4');
INSERT INTO `triznnetworks_ips` (`ip_address`, `ip_type`) VALUES ('180.189.176.0/20', 'IPv4');
INSERT INTO `triznnetworks_ips` (`ip_address`, `ip_type`) VALUES ('211.41.160.0/19', 'IPv4');
INSERT INTO `triznnetworks_ips` (`ip_address`, `ip_type`) VALUES ('211.47.132.0/22', 'IPv4');
INSERT INTO `triznnetworks_ips` (`ip_address`, `ip_type`) VALUES ('211.47.136.0/21', 'IPv4');
INSERT INTO `triznnetworks_ips` (`ip_address`, `ip_type`) VALUES ('211.47.144.0/20', 'IPv4');
INSERT INTO `triznnetworks_ips` (`ip_address`, `ip_type`) VALUES ('211.235.224.0/19', 'IPv4');
INSERT INTO `triznnetworks_ips` (`ip_address`, `ip_type`) VALUES ('211.255.0.0/18', 'IPv4');
INSERT INTO `triznnetworks_ips` (`ip_address`, `ip_type`) VALUES ('223.165.128.0/17', 'IPv4');

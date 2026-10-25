-- SQL script to create table `lgtelecom_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `lgtelecom_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `lgtelecom_ips` (`ip_address`, `ip_type`) VALUES ('106.96.0.0/13', 'IPv4');
INSERT INTO `lgtelecom_ips` (`ip_address`, `ip_type`) VALUES ('180.210.192.0/21', 'IPv4');
INSERT INTO `lgtelecom_ips` (`ip_address`, `ip_type`) VALUES ('203.82.240.0/21', 'IPv4');
INSERT INTO `lgtelecom_ips` (`ip_address`, `ip_type`) VALUES ('223.168.0.0/13', 'IPv4');
INSERT INTO `lgtelecom_ips` (`ip_address`, `ip_type`) VALUES ('2001:4430::/32', 'IPv6');

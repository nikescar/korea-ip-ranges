-- SQL script to create table `pubnetplus_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `pubnetplus_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('14.4.0.0/14', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('58.29.0.0/16', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('58.184.0.0/16', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('61.108.0.0/16', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('103.3.36.0/22', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('112.76.0.0/15', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('117.110.0.0/15', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('122.153.0.0/16', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('122.203.0.0/16', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('125.240.0.0/13', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('125.248.0.0/14', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('180.80.0.0/14', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('210.220.0.0/19', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('211.35.0.0/18', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('211.42.0.0/17', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('211.61.0.0/18', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('211.112.128.0/17', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('211.173.0.0/17', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('211.241.0.0/17', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('220.65.0.0/16', 'IPv4');
INSERT INTO `pubnetplus_ips` (`ip_address`, `ip_type`) VALUES ('2001:e78::/32', 'IPv6');

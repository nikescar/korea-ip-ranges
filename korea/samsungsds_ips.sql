-- SQL script to create table `samsungsds_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `samsungsds_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('42.8.0.0/13', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('112.106.0.0/15', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('112.108.0.0/16', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('121.252.0.0/15', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('122.101.0.0/16', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('123.32.0.0/12', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('157.197.0.0/16', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('165.213.0.0/16', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('166.79.0.0/16', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('166.103.0.0/16', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('168.219.0.0/16', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('180.236.0.0/14', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('182.192.0.0/13', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('202.20.128.0/17', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('202.31.216.0/22', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('203.241.48.0/22', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('203.241.132.0/22', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('203.241.136.0/21', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('203.241.144.0/20', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('203.241.160.0/22', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('203.242.96.0/20', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('203.244.96.0/19', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('203.244.192.0/19', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('203.244.240.0/20', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('203.246.192.0/18', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('203.249.192.0/19', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('203.254.174.0/24', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('203.254.192.0/18', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('203.255.124.0/22', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('210.94.32.0/19', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('210.118.32.0/19', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('210.118.64.0/18', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('211.36.64.0/19', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('211.45.0.0/19', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('211.189.0.0/17', 'IPv4');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('2001:330::/32', 'IPv6');
INSERT INTO `samsungsds_ips` (`ip_address`, `ip_type`) VALUES ('2404:180::/28', 'IPv6');

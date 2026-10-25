-- SQL script to create table `cdnetworks_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `cdnetworks_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `cdnetworks_ips` (`ip_address`, `ip_type`) VALUES ('14.0.32.0/19', 'IPv4');
INSERT INTO `cdnetworks_ips` (`ip_address`, `ip_type`) VALUES ('14.0.64.0/18', 'IPv4');
INSERT INTO `cdnetworks_ips` (`ip_address`, `ip_type`) VALUES ('61.110.192.0/18', 'IPv4');
INSERT INTO `cdnetworks_ips` (`ip_address`, `ip_type`) VALUES ('101.79.144.0/20', 'IPv4');
INSERT INTO `cdnetworks_ips` (`ip_address`, `ip_type`) VALUES ('101.79.160.0/20', 'IPv4');
INSERT INTO `cdnetworks_ips` (`ip_address`, `ip_type`) VALUES ('101.79.208.0/20', 'IPv4');
INSERT INTO `cdnetworks_ips` (`ip_address`, `ip_type`) VALUES ('101.79.224.0/20', 'IPv4');
INSERT INTO `cdnetworks_ips` (`ip_address`, `ip_type`) VALUES ('103.248.104.0/22', 'IPv4');
INSERT INTO `cdnetworks_ips` (`ip_address`, `ip_type`) VALUES ('114.111.48.0/20', 'IPv4');
INSERT INTO `cdnetworks_ips` (`ip_address`, `ip_type`) VALUES ('116.193.80.0/20', 'IPv4');
INSERT INTO `cdnetworks_ips` (`ip_address`, `ip_type`) VALUES ('118.107.160.0/20', 'IPv4');
INSERT INTO `cdnetworks_ips` (`ip_address`, `ip_type`) VALUES ('119.31.248.0/21', 'IPv4');
INSERT INTO `cdnetworks_ips` (`ip_address`, `ip_type`) VALUES ('175.41.0.0/20', 'IPv4');
INSERT INTO `cdnetworks_ips` (`ip_address`, `ip_type`) VALUES ('211.43.144.0/20', 'IPv4');
INSERT INTO `cdnetworks_ips` (`ip_address`, `ip_type`) VALUES ('2401:c500::/32', 'IPv6');

-- SQL script to create table `hostcenter_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `hostcenter_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `hostcenter_ips` (`ip_address`, `ip_type`) VALUES ('27.255.64.0/19', 'IPv4');
INSERT INTO `hostcenter_ips` (`ip_address`, `ip_type`) VALUES ('61.14.208.0/22', 'IPv4');
INSERT INTO `hostcenter_ips` (`ip_address`, `ip_type`) VALUES ('61.97.240.0/20', 'IPv4');
INSERT INTO `hostcenter_ips` (`ip_address`, `ip_type`) VALUES ('103.249.28.0/22', 'IPv4');
INSERT INTO `hostcenter_ips` (`ip_address`, `ip_type`) VALUES ('180.150.224.0/21', 'IPv4');
INSERT INTO `hostcenter_ips` (`ip_address`, `ip_type`) VALUES ('2407:b00::/32', 'IPv6');

-- SQL script to create table `koren_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `koren_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `koren_ips` (`ip_address`, `ip_type`) VALUES ('45.248.72.0/22', 'IPv4');
INSERT INTO `koren_ips` (`ip_address`, `ip_type`) VALUES ('61.252.48.0/20', 'IPv4');
INSERT INTO `koren_ips` (`ip_address`, `ip_type`) VALUES ('103.22.220.0/22', 'IPv4');
INSERT INTO `koren_ips` (`ip_address`, `ip_type`) VALUES ('116.89.160.0/19', 'IPv4');
INSERT INTO `koren_ips` (`ip_address`, `ip_type`) VALUES ('202.30.64.0/19', 'IPv4');
INSERT INTO `koren_ips` (`ip_address`, `ip_type`) VALUES ('203.254.51.0/24', 'IPv4');
INSERT INTO `koren_ips` (`ip_address`, `ip_type`) VALUES ('203.254.52.0/22', 'IPv4');
INSERT INTO `koren_ips` (`ip_address`, `ip_type`) VALUES ('203.254.56.0/24', 'IPv4');
INSERT INTO `koren_ips` (`ip_address`, `ip_type`) VALUES ('203.255.248.0/21', 'IPv4');
INSERT INTO `koren_ips` (`ip_address`, `ip_type`) VALUES ('210.114.88.0/21', 'IPv4');
INSERT INTO `koren_ips` (`ip_address`, `ip_type`) VALUES ('2406:d000::/32', 'IPv6');
INSERT INTO `koren_ips` (`ip_address`, `ip_type`) VALUES ('2407:c000::/32', 'IPv6');

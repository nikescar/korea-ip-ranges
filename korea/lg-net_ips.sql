-- SQL script to create table `lg-net_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `lg-net_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `lg-net_ips` (`ip_address`, `ip_type`) VALUES ('27.122.128.0/17', 'IPv4');
INSERT INTO `lg-net_ips` (`ip_address`, `ip_type`) VALUES ('121.50.16.0/20', 'IPv4');
INSERT INTO `lg-net_ips` (`ip_address`, `ip_type`) VALUES ('124.46.0.0/17', 'IPv4');
INSERT INTO `lg-net_ips` (`ip_address`, `ip_type`) VALUES ('150.150.0.0/16', 'IPv4');
INSERT INTO `lg-net_ips` (`ip_address`, `ip_type`) VALUES ('156.147.0.0/16', 'IPv4');
INSERT INTO `lg-net_ips` (`ip_address`, `ip_type`) VALUES ('165.186.0.0/16', 'IPv4');
INSERT INTO `lg-net_ips` (`ip_address`, `ip_type`) VALUES ('165.243.0.0/16', 'IPv4');
INSERT INTO `lg-net_ips` (`ip_address`, `ip_type`) VALUES ('165.244.0.0/16', 'IPv4');
INSERT INTO `lg-net_ips` (`ip_address`, `ip_type`) VALUES ('202.21.0.0/21', 'IPv4');
INSERT INTO `lg-net_ips` (`ip_address`, `ip_type`) VALUES ('203.247.128.0/19', 'IPv4');
INSERT INTO `lg-net_ips` (`ip_address`, `ip_type`) VALUES ('2400:3300::/32', 'IPv6');

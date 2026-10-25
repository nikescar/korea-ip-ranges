-- SQL script to create table `sk-net_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `sk-net_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `sk-net_ips` (`ip_address`, `ip_type`) VALUES ('49.50.32.0/19', 'IPv4');
INSERT INTO `sk-net_ips` (`ip_address`, `ip_type`) VALUES ('61.97.0.0/20', 'IPv4');
INSERT INTO `sk-net_ips` (`ip_address`, `ip_type`) VALUES ('124.66.176.0/20', 'IPv4');
INSERT INTO `sk-net_ips` (`ip_address`, `ip_type`) VALUES ('168.154.0.0/16', 'IPv4');
INSERT INTO `sk-net_ips` (`ip_address`, `ip_type`) VALUES ('182.50.32.0/19', 'IPv4');
INSERT INTO `sk-net_ips` (`ip_address`, `ip_type`) VALUES ('203.235.192.0/21', 'IPv4');
INSERT INTO `sk-net_ips` (`ip_address`, `ip_type`) VALUES ('203.235.202.0/23', 'IPv4');
INSERT INTO `sk-net_ips` (`ip_address`, `ip_type`) VALUES ('203.235.208.0/20', 'IPv4');
INSERT INTO `sk-net_ips` (`ip_address`, `ip_type`) VALUES ('203.235.224.0/19', 'IPv4');
INSERT INTO `sk-net_ips` (`ip_address`, `ip_type`) VALUES ('203.242.64.0/19', 'IPv4');
INSERT INTO `sk-net_ips` (`ip_address`, `ip_type`) VALUES ('203.242.120.0/21', 'IPv4');
INSERT INTO `sk-net_ips` (`ip_address`, `ip_type`) VALUES ('210.211.64.0/19', 'IPv4');
INSERT INTO `sk-net_ips` (`ip_address`, `ip_type`) VALUES ('211.45.32.0/19', 'IPv4');
INSERT INTO `sk-net_ips` (`ip_address`, `ip_type`) VALUES ('2405:8600::/32', 'IPv6');

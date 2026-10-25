-- SQL script to create table `daou_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `daou_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `daou_ips` (`ip_address`, `ip_type`) VALUES ('1.16.0.0/18', 'IPv4');
INSERT INTO `daou_ips` (`ip_address`, `ip_type`) VALUES ('27.102.0.0/16', 'IPv4');
INSERT INTO `daou_ips` (`ip_address`, `ip_type`) VALUES ('103.13.160.0/22', 'IPv4');
INSERT INTO `daou_ips` (`ip_address`, `ip_type`) VALUES ('110.172.100.0/22', 'IPv4');
INSERT INTO `daou_ips` (`ip_address`, `ip_type`) VALUES ('110.172.104.0/21', 'IPv4');
INSERT INTO `daou_ips` (`ip_address`, `ip_type`) VALUES ('110.172.112.0/20', 'IPv4');
INSERT INTO `daou_ips` (`ip_address`, `ip_type`) VALUES ('113.29.128.0/18', 'IPv4');
INSERT INTO `daou_ips` (`ip_address`, `ip_type`) VALUES ('113.29.192.0/20', 'IPv4');
INSERT INTO `daou_ips` (`ip_address`, `ip_type`) VALUES ('115.71.0.0/16', 'IPv4');
INSERT INTO `daou_ips` (`ip_address`, `ip_type`) VALUES ('203.133.160.0/19', 'IPv4');
INSERT INTO `daou_ips` (`ip_address`, `ip_type`) VALUES ('203.217.204.0/22', 'IPv4');
INSERT INTO `daou_ips` (`ip_address`, `ip_type`) VALUES ('203.217.208.0/20', 'IPv4');
INSERT INTO `daou_ips` (`ip_address`, `ip_type`) VALUES ('203.217.224.0/19', 'IPv4');
INSERT INTO `daou_ips` (`ip_address`, `ip_type`) VALUES ('2403:3e00::/32', 'IPv6');

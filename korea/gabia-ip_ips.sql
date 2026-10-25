-- SQL script to create table `gabia-ip_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `gabia-ip_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `gabia-ip_ips` (`ip_address`, `ip_type`) VALUES ('45.115.152.0/22', 'IPv4');
INSERT INTO `gabia-ip_ips` (`ip_address`, `ip_type`) VALUES ('45.120.68.0/22', 'IPv4');
INSERT INTO `gabia-ip_ips` (`ip_address`, `ip_type`) VALUES ('103.55.188.0/22', 'IPv4');
INSERT INTO `gabia-ip_ips` (`ip_address`, `ip_type`) VALUES ('103.60.124.0/22', 'IPv4');
INSERT INTO `gabia-ip_ips` (`ip_address`, `ip_type`) VALUES ('139.150.64.0/19', 'IPv4');
INSERT INTO `gabia-ip_ips` (`ip_address`, `ip_type`) VALUES ('211.47.64.0/20', 'IPv4');
INSERT INTO `gabia-ip_ips` (`ip_address`, `ip_type`) VALUES ('2401:9ec0::/32', 'IPv6');

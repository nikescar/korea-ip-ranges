-- SQL script to create table `scsnet_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `scsnet_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `scsnet_ips` (`ip_address`, `ip_type`) VALUES ('58.65.64.0/18', 'IPv4');
INSERT INTO `scsnet_ips` (`ip_address`, `ip_type`) VALUES ('103.117.0.0/22', 'IPv4');
INSERT INTO `scsnet_ips` (`ip_address`, `ip_type`) VALUES ('115.160.0.0/17', 'IPv4');
INSERT INTO `scsnet_ips` (`ip_address`, `ip_type`) VALUES ('121.1.64.0/18', 'IPv4');
INSERT INTO `scsnet_ips` (`ip_address`, `ip_type`) VALUES ('124.153.128.0/17', 'IPv4');
INSERT INTO `scsnet_ips` (`ip_address`, `ip_type`) VALUES ('182.31.0.0/16', 'IPv4');
INSERT INTO `scsnet_ips` (`ip_address`, `ip_type`) VALUES ('211.246.128.0/17', 'IPv4');

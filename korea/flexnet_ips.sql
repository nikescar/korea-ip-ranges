-- SQL script to create table `flexnet_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `flexnet_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `flexnet_ips` (`ip_address`, `ip_type`) VALUES ('14.192.80.0/20', 'IPv4');
INSERT INTO `flexnet_ips` (`ip_address`, `ip_type`) VALUES ('43.255.252.0/22', 'IPv4');
INSERT INTO `flexnet_ips` (`ip_address`, `ip_type`) VALUES ('103.239.240.0/22', 'IPv4');
INSERT INTO `flexnet_ips` (`ip_address`, `ip_type`) VALUES ('111.67.208.0/20', 'IPv4');
INSERT INTO `flexnet_ips` (`ip_address`, `ip_type`) VALUES ('115.165.176.0/21', 'IPv4');
INSERT INTO `flexnet_ips` (`ip_address`, `ip_type`) VALUES ('175.111.16.0/20', 'IPv4');

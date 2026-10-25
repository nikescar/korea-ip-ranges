-- SQL script to create table `smileserv_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `smileserv_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `smileserv_ips` (`ip_address`, `ip_type`) VALUES ('43.255.248.0/22', 'IPv4');
INSERT INTO `smileserv_ips` (`ip_address`, `ip_type`) VALUES ('49.247.0.0/16', 'IPv4');
INSERT INTO `smileserv_ips` (`ip_address`, `ip_type`) VALUES ('103.239.236.0/22', 'IPv4');
INSERT INTO `smileserv_ips` (`ip_address`, `ip_type`) VALUES ('115.68.0.0/16', 'IPv4');

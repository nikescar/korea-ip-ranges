-- SQL script to create table `dotname_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `dotname_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `dotname_ips` (`ip_address`, `ip_type`) VALUES ('45.120.64.0/22', 'IPv4');
INSERT INTO `dotname_ips` (`ip_address`, `ip_type`) VALUES ('103.31.180.0/22', 'IPv4');
INSERT INTO `dotname_ips` (`ip_address`, `ip_type`) VALUES ('121.0.64.0/18', 'IPv4');
INSERT INTO `dotname_ips` (`ip_address`, `ip_type`) VALUES ('203.210.16.0/20', 'IPv4');
INSERT INTO `dotname_ips` (`ip_address`, `ip_type`) VALUES ('210.87.192.0/19', 'IPv4');

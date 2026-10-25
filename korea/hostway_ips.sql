-- SQL script to create table `hostway_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `hostway_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `hostway_ips` (`ip_address`, `ip_type`) VALUES ('103.24.8.0/22', 'IPv4');
INSERT INTO `hostway_ips` (`ip_address`, `ip_type`) VALUES ('150.107.68.0/22', 'IPv4');
INSERT INTO `hostway_ips` (`ip_address`, `ip_type`) VALUES ('2406:ad00::/32', 'IPv6');

-- SQL script to create table `kpin_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `kpin_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `kpin_ips` (`ip_address`, `ip_type`) VALUES ('43.242.112.0/22', 'IPv4');
INSERT INTO `kpin_ips` (`ip_address`, `ip_type`) VALUES ('103.38.24.0/22', 'IPv4');
INSERT INTO `kpin_ips` (`ip_address`, `ip_type`) VALUES ('119.42.160.0/19', 'IPv4');
INSERT INTO `kpin_ips` (`ip_address`, `ip_type`) VALUES ('202.136.112.0/20', 'IPv4');
INSERT INTO `kpin_ips` (`ip_address`, `ip_type`) VALUES ('202.167.208.0/22', 'IPv4');
INSERT INTO `kpin_ips` (`ip_address`, `ip_type`) VALUES ('202.167.212.0/23', 'IPv4');
INSERT INTO `kpin_ips` (`ip_address`, `ip_type`) VALUES ('202.167.214.0/24', 'IPv4');
INSERT INTO `kpin_ips` (`ip_address`, `ip_type`) VALUES ('202.167.216.0/21', 'IPv4');
INSERT INTO `kpin_ips` (`ip_address`, `ip_type`) VALUES ('211.35.64.0/20', 'IPv4');
INSERT INTO `kpin_ips` (`ip_address`, `ip_type`) VALUES ('221.133.48.0/22', 'IPv4');
INSERT INTO `kpin_ips` (`ip_address`, `ip_type`) VALUES ('221.133.52.0/23', 'IPv4');
INSERT INTO `kpin_ips` (`ip_address`, `ip_type`) VALUES ('221.133.54.0/24', 'IPv4');
INSERT INTO `kpin_ips` (`ip_address`, `ip_type`) VALUES ('221.133.56.0/21', 'IPv4');

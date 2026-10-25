-- SQL script to create table `cablenet_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `cablenet_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `cablenet_ips` (`ip_address`, `ip_type`) VALUES ('27.100.128.0/17', 'IPv4');
INSERT INTO `cablenet_ips` (`ip_address`, `ip_type`) VALUES ('103.214.88.0/22', 'IPv4');
INSERT INTO `cablenet_ips` (`ip_address`, `ip_type`) VALUES ('112.133.0.0/17', 'IPv4');
INSERT INTO `cablenet_ips` (`ip_address`, `ip_type`) VALUES ('122.202.128.0/17', 'IPv4');
INSERT INTO `cablenet_ips` (`ip_address`, `ip_type`) VALUES ('144.48.92.0/22', 'IPv4');

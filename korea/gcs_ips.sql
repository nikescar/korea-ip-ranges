-- SQL script to create table `gcs_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `gcs_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `gcs_ips` (`ip_address`, `ip_type`) VALUES ('27.113.0.0/17', 'IPv4');
INSERT INTO `gcs_ips` (`ip_address`, `ip_type`) VALUES ('114.199.0.0/18', 'IPv4');
INSERT INTO `gcs_ips` (`ip_address`, `ip_type`) VALUES ('119.17.0.0/19', 'IPv4');
INSERT INTO `gcs_ips` (`ip_address`, `ip_type`) VALUES ('121.55.64.0/18', 'IPv4');
INSERT INTO `gcs_ips` (`ip_address`, `ip_type`) VALUES ('121.55.128.0/18', 'IPv4');
INSERT INTO `gcs_ips` (`ip_address`, `ip_type`) VALUES ('125.208.192.0/18', 'IPv4');
INSERT INTO `gcs_ips` (`ip_address`, `ip_type`) VALUES ('2407:2000::/32', 'IPv6');

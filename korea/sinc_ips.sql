-- SQL script to create table `sinc_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `sinc_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `sinc_ips` (`ip_address`, `ip_type`) VALUES ('202.3.16.0/20', 'IPv4');
INSERT INTO `sinc_ips` (`ip_address`, `ip_type`) VALUES ('202.8.160.0/19', 'IPv4');

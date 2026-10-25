-- SQL script to create table `nexinno_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `nexinno_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `nexinno_ips` (`ip_address`, `ip_type`) VALUES ('45.64.172.0/22', 'IPv4');
INSERT INTO `nexinno_ips` (`ip_address`, `ip_type`) VALUES ('103.251.104.0/22', 'IPv4');

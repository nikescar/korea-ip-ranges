-- SQL script to create table `ktcloud-net_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `ktcloud-net_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `ktcloud-net_ips` (`ip_address`, `ip_type`) VALUES ('163.223.94.0/23', 'IPv4');
INSERT INTO `ktcloud-net_ips` (`ip_address`, `ip_type`) VALUES ('2401:f560::/32', 'IPv6');

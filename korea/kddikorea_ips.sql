-- SQL script to create table `kddikorea_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `kddikorea_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `kddikorea_ips` (`ip_address`, `ip_type`) VALUES ('61.106.0.0/19', 'IPv4');
INSERT INTO `kddikorea_ips` (`ip_address`, `ip_type`) VALUES ('61.251.160.0/20', 'IPv4');
INSERT INTO `kddikorea_ips` (`ip_address`, `ip_type`) VALUES ('119.59.0.0/18', 'IPv4');
INSERT INTO `kddikorea_ips` (`ip_address`, `ip_type`) VALUES ('211.111.208.0/20', 'IPv4');
INSERT INTO `kddikorea_ips` (`ip_address`, `ip_type`) VALUES ('2400:1800::/32', 'IPv6');

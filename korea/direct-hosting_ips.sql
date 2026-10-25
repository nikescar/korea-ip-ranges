-- SQL script to create table `direct-hosting_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `direct-hosting_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `direct-hosting_ips` (`ip_address`, `ip_type`) VALUES ('58.84.44.0/22', 'IPv4');
INSERT INTO `direct-hosting_ips` (`ip_address`, `ip_type`) VALUES ('103.4.148.0/22', 'IPv4');
INSERT INTO `direct-hosting_ips` (`ip_address`, `ip_type`) VALUES ('223.130.64.0/18', 'IPv4');
INSERT INTO `direct-hosting_ips` (`ip_address`, `ip_type`) VALUES ('2403:3700::/32', 'IPv6');

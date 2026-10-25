-- SQL script to create table `xpeed_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `xpeed_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `xpeed_ips` (`ip_address`, `ip_type`) VALUES ('49.160.0.0/12', 'IPv4');
INSERT INTO `xpeed_ips` (`ip_address`, `ip_type`) VALUES ('58.77.0.0/16', 'IPv4');
INSERT INTO `xpeed_ips` (`ip_address`, `ip_type`) VALUES ('58.78.0.0/15', 'IPv4');
INSERT INTO `xpeed_ips` (`ip_address`, `ip_type`) VALUES ('58.148.0.0/16', 'IPv4');
INSERT INTO `xpeed_ips` (`ip_address`, `ip_type`) VALUES ('103.68.152.0/22', 'IPv4');
INSERT INTO `xpeed_ips` (`ip_address`, `ip_type`) VALUES ('112.144.0.0/12', 'IPv4');
INSERT INTO `xpeed_ips` (`ip_address`, `ip_type`) VALUES ('115.136.0.0/13', 'IPv4');
INSERT INTO `xpeed_ips` (`ip_address`, `ip_type`) VALUES ('116.32.0.0/12', 'IPv4');
INSERT INTO `xpeed_ips` (`ip_address`, `ip_type`) VALUES ('119.64.0.0/13', 'IPv4');
INSERT INTO `xpeed_ips` (`ip_address`, `ip_type`) VALUES ('122.32.0.0/12', 'IPv4');
INSERT INTO `xpeed_ips` (`ip_address`, `ip_type`) VALUES ('124.48.0.0/12', 'IPv4');
INSERT INTO `xpeed_ips` (`ip_address`, `ip_type`) VALUES ('125.176.0.0/12', 'IPv4');
INSERT INTO `xpeed_ips` (`ip_address`, `ip_type`) VALUES ('180.224.0.0/13', 'IPv4');
INSERT INTO `xpeed_ips` (`ip_address`, `ip_type`) VALUES ('182.208.0.0/12', 'IPv4');
INSERT INTO `xpeed_ips` (`ip_address`, `ip_type`) VALUES ('182.224.0.0/13', 'IPv4');
INSERT INTO `xpeed_ips` (`ip_address`, `ip_type`) VALUES ('2406:5900::/32', 'IPv6');

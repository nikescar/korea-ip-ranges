-- SQL script to create table `cmbmutinet_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `cmbmutinet_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `cmbmutinet_ips` (`ip_address`, `ip_type`) VALUES ('27.126.0.0/18', 'IPv4');
INSERT INTO `cmbmutinet_ips` (`ip_address`, `ip_type`) VALUES ('103.237.20.0/22', 'IPv4');
INSERT INTO `cmbmutinet_ips` (`ip_address`, `ip_type`) VALUES ('122.252.192.0/19', 'IPv4');
INSERT INTO `cmbmutinet_ips` (`ip_address`, `ip_type`) VALUES ('163.53.156.0/22', 'IPv4');

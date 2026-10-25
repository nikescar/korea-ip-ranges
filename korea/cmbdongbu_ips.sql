-- SQL script to create table `cmbdongbu_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `cmbdongbu_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `cmbdongbu_ips` (`ip_address`, `ip_type`) VALUES ('43.241.108.0/22', 'IPv4');
INSERT INTO `cmbdongbu_ips` (`ip_address`, `ip_type`) VALUES ('49.143.180.0/22', 'IPv4');
INSERT INTO `cmbdongbu_ips` (`ip_address`, `ip_type`) VALUES ('49.143.184.0/23', 'IPv4');
INSERT INTO `cmbdongbu_ips` (`ip_address`, `ip_type`) VALUES ('49.143.186.0/24', 'IPv4');
INSERT INTO `cmbdongbu_ips` (`ip_address`, `ip_type`) VALUES ('103.28.60.0/22', 'IPv4');
INSERT INTO `cmbdongbu_ips` (`ip_address`, `ip_type`) VALUES ('119.235.240.0/21', 'IPv4');
INSERT INTO `cmbdongbu_ips` (`ip_address`, `ip_type`) VALUES ('125.62.216.0/21', 'IPv4');
INSERT INTO `cmbdongbu_ips` (`ip_address`, `ip_type`) VALUES ('203.166.208.0/21', 'IPv4');

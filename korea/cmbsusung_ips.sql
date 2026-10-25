-- SQL script to create table `cmbsusung_ips` and insert IP addresses
-- Generated: 2026-10-26
-- Source: Korea Network Information Center (KRNIC)

CREATE TABLE IF NOT EXISTS `cmbsusung_ips` (
  `ip_address` VARCHAR(45) NOT NULL,
  `ip_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ip_address`)
);

INSERT INTO `cmbsusung_ips` (`ip_address`, `ip_type`) VALUES ('43.241.104.0/22', 'IPv4');
INSERT INTO `cmbsusung_ips` (`ip_address`, `ip_type`) VALUES ('49.143.187.0/24', 'IPv4');
INSERT INTO `cmbsusung_ips` (`ip_address`, `ip_type`) VALUES ('58.147.176.0/21', 'IPv4');
INSERT INTO `cmbsusung_ips` (`ip_address`, `ip_type`) VALUES ('103.28.64.0/22', 'IPv4');
INSERT INTO `cmbsusung_ips` (`ip_address`, `ip_type`) VALUES ('122.129.208.0/21', 'IPv4');

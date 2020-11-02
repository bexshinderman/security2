-- Create Database
CREATE DATABASE `ecorp`;
USE `ecorp`;

-- Create a dedicated MySQL user
GRANT ALL PRIVILEGES ON ecorp.* TO 'ecorp_admin'@'localhost' IDENTIFIED BY 'passw0rd';

-- Insert a table for users
CREATE TABLE `ecorp`.`users` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(20) NOT NULL,
    `password` CHAR(128) NOT NULL,
	`salt` CHAR(44) NOT NULL
) ENGINE = InnoDB;

-- Insert the ecorp users
INSERT INTO `ecorp`.`users` VALUES (null, 'elliot_alderson', '105490c0fae26fbf46287065f533d5f9e9e83b6a4ed6bf8fd43f68456bab5a2291f9097eb9b8d21c913a1c5eb3f2f8c4dbba07173fce41c784a137314abc7112', 's8xQeIvtwpi+JVzZW0FwRwOufykg3BecI/pl+GLP5iw=');
INSERT INTO `ecorp`.`users` VALUES (null, 'tyrell_wellick', '021a51ccaa2ea57252bfa3c97ded8835670f3276ab703b0a8fcd297eb06a31916ff9c8a58b11d8746fc6cf88039561d78845c190b96959ded6dcb505893e4acb', 'gimb8u2P8A8hRj2SKr3tplsuiGZfHRnUbbsNetZrGtM=');
INSERT INTO `ecorp`.`users` VALUES (null, 'terry_colby', '3870bf4cc67841d7daf765572539c22de4b42cb3cf2fbd4bede1a18a7b01c133cc6ef099eaaabb2d7d1bb7e867a88cd3194265c405931bd9329713b31d7f3e01', 'TYeKH0R8+SPEOkbTewDdU4d9V6Uj3TkZfjlAbQ9d1mU=');
INSERT INTO `ecorp`.`users` VALUES (null, 'angela_moss', 'e92fdf13be4b2f879c4559e961853c8b733746456902c5e38cc2bca5405c33965ea7c2b3b17e2d15a53be6f3aeccda313b68e5cfe23a581655965f9caf35deee', '81M82iqQqNY2ZyZb40DmZMdFS80WqrjuVHn7c5UFuww=');
INSERT INTO `ecorp`.`users` VALUES (null, 'scott_knowles', 'b549d21d12af8469b2a3539fc5d024011ca5830c9d7c635bef0135c7c434dcf10a0ab4d3cf84c7db6969fa466d7c6c0d13bd857024257f4f495ee1395357761e', 'X7Zb+tNhXtB/B5y0l9lOAIzMWSarXpWNgYJyUnqt5ac=');
INSERT INTO `ecorp`.`users` VALUES (null, 'susan_jacobs', '9b9c4b04a82358d94075669d777ff19ff9f7bcfae9d363f53fe20b6c1d46c05281531e71211638faaed3d20e8de21ede726f12ec3d29c86215cd2c30c2cf54d7', 'u6C/2S0olcvPJ0Ms3lwt9nREQ8WYA8l+bEsD19NnTUU=');

-- Create table for employee lookup
CREATE TABLE `ecorp`.`employees` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(20) NOT NULL,
    `first_name` VARCHAR(30) NOT NULL,
    `last_name` VARCHAR(30) NOT NULL,
    `position` VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

-- Insert ecorp employees
INSERT INTO `ecorp`.`employees` VALUES (null, 'elliot_alderson', 'Elliot', 'Alderson', 'Cybersecurity Engineer');
INSERT INTO `ecorp`.`employees` VALUES (null, 'tyrell_wellick', 'Tyrell', 'Wellick', 'Senior VP of Technology');
INSERT INTO `ecorp`.`employees` VALUES (null, 'terry_colby', 'Terry', 'Colby', 'Chief Technology Officer');
INSERT INTO `ecorp`.`employees` VALUES (null, 'angela_moss', 'Angela', 'Moss', 'Risk Management Assessment');
INSERT INTO `ecorp`.`employees` VALUES (null, 'scott_knowles', 'Scott', 'Knowles', 'Chief Technology Officer');
INSERT INTO `ecorp`.`employees` VALUES (null, 'susan_jacobs', 'Susan', 'Jacobs', 'General Counsel');

-- Create table for noticeboard
CREATE TABLE `ecorp`.`noticeboard` (
    `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `comments` VARCHAR(300) NOT NULL
) ENGINE = InnoDB;

-- Insert records into noticeboard table
INSERT INTO `ecorp`.`noticeboard` VALUES (null, 'Terry Colby', 'This is an automated test post. I am a robot!');


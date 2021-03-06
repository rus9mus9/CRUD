DROP DATABASE IF EXISTS TEST;
CREATE DATABASE TEST;
USE TEST;
DROP TABLE IF EXISTS `test`.`users`;

CREATE TABLE USERS
(
	`ID` INT(8) NOT NULL AUTO_INCREMENT,
	`USER_NAME` VARCHAR(25) NOT NULL,
	`AGE` INT(3) NOT NULL,
	`IS_ADMIN` BOOLEAN NOT NULL,
	`CREATE_DATE` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `test`.`users` (`USER_NAME`, `AGE`, `IS_ADMIN`) VALUES ('Keanu Reeves', '52', '0');
INSERT INTO `test`.`users` (`USER_NAME`, `AGE`, `IS_ADMIN`) VALUES ('Brad Pitt', '53', '0');
INSERT INTO `test`.`users` (`USER_NAME`, `AGE`, `IS_ADMIN`) VALUES ('Ben Affleck', '44', '0');
INSERT INTO `test`.`users` (`USER_NAME`, `AGE`, `IS_ADMIN`) VALUES ('Ryan Gosling', '36', '0');
INSERT INTO `test`.`users` (`USER_NAME`, `AGE`, `IS_ADMIN`) VALUES ('Matthew McConaughey', '47', '0');
INSERT INTO `test`.`users` (`USER_NAME`, `AGE`, `IS_ADMIN`) VALUES ('James Cameron', '62', '1');
INSERT INTO `test`.`users` (`USER_NAME`, `AGE`, `IS_ADMIN`) VALUES ('Uma Thurman', '47', '0');
INSERT INTO `test`.`users` (`USER_NAME`, `AGE`, `IS_ADMIN`) VALUES ('Robert De Niro', '73', '0');
INSERT INTO `test`.`users` (`USER_NAME`, `AGE`, `IS_ADMIN`) VALUES ('Al Pacino', '77', '0');
INSERT INTO `test`.`users` (`USER_NAME`, `AGE`, `IS_ADMIN`) VALUES ('Kevin Spacey', '57', '0');
INSERT INTO `test`.`users` (`USER_NAME`, `AGE`, `IS_ADMIN`) VALUES ('John Travolta', '63', '0');
INSERT INTO `test`.`users` (`USER_NAME`, `AGE`, `IS_ADMIN`) VALUES ('Leonardo DiCaprio', '42', '0');
INSERT INTO `test`.`users` (`USER_NAME`, `AGE`, `IS_ADMIN`) VALUES ('Russell Crowe', '53', '0');
INSERT INTO `test`.`users` (`USER_NAME`, `AGE`, `IS_ADMIN`) VALUES ('Tom Hanks', '60', '0');

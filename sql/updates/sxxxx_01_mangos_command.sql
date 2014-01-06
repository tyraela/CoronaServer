-- New .hover on/off command
DELETE FROM `command` WHERE `name` = 'hover';
DELETE FROM `mangos_string` WHERE `entry` = '555';
DELETE FROM `mangos_string` WHERE `entry` = '556';
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('hover', '2', 'Syntax: .hover on/off\r\n\r\nSet on/off hover state for selected player.');
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES ('555', 'Hover enabled');
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES ('556', 'Hover disabled');
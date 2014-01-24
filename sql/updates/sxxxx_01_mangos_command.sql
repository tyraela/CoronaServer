-- New .hover on/off command
DELETE FROM `command` WHERE `name` = 'hover';
DELETE FROM `mangos_string` WHERE `entry` = '555';
DELETE FROM `mangos_string` WHERE `entry` = '556';
INSERT INTO `command` (`name`, `security`, `help`) VALUES ('hover', '2', 'Syntax: .hover on/off\r\n\r\nSet on/off hover state for selected player.');
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES ('555', 'Hover enabled');
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES ('556', 'Hover disabled');


-- New .debug moveflags command
DELETE FROM `command` WHERE `name` LIKE 'debug moveflags';
INSERT INTO `command` (`name`,`security`,`help`) VALUES ('debug moveflags',3,'Syntax: .debug moveflags $newMoveFlags\r\nNo params given will output the current moveflags of the target');
DELETE FROM `mangos_string` WHERE `entry` IN(1196,1197);
INSERT INTO `mangos_string` (`entry`,`content_default`) VALUES (1196,'Target''s moveFlags: %u'), (1197,'Target''s moveFlags set to: %u');
CREATE TABLE `UserTimerChest` (
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `timer_start` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'when player start a timer',
  `active_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'when player can open timer chest',
  `chest_id` varchar(200) NOT NULL DEFAULT '0' COMMENT 'which chest will be opened',
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
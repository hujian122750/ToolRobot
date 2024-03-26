CREATE TABLE `WarDrill` (
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `season_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `chapter` INT unsigned NOT NULL DEFAULT '0',
  `level` INT NOT NULL DEFAULT '0',
  `rewards_info` blob NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
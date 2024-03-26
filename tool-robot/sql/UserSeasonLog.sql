CREATE TABLE `UserSeasonLog` (
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `config_id` bigint(20) NOT NULL DEFAULT '0',
  `season_id` bigint(20) NOT NULL DEFAULT '0',
  `data` blob NOT NULL COMMENT '赛季数据',
  `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`,`config_id`,`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
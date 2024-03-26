CREATE TABLE `FortuneHerald` (
  `uid` bigint(20) NOT NULL,
  `layer_id` int(11) NOT NULL,
  `season_id` int(11) DEFAULT NULL,
  `reset_times` int(11) DEFAULT NULL,
  `special_times` int(11) DEFAULT NULL,
  `open` tinyint(1) DEFAULT NULL,
  `mtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`,`layer_id`)
) ENGINE = INNODB DEFAULT CHARSET utf8;
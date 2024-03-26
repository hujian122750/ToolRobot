CREATE TABLE `FortuneHeraldBox` (
  `uid` bigint(20) NOT NULL,
  `season_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `trace` blob,
  `open` tinyint(1) DEFAULT NULL,
  `mtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE = INNODB DEFAULT CHARSET utf8;
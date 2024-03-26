CREATE TABLE `UserKillRace` (
  `uid` bigint(20) NOT NULL,
  `season` bigint(20) DEFAULT NULL,
  `alliance_id` bigint(20) DEFAULT NULL,
  `upgrade` bigint(20) DEFAULT NULL,
  `damage` bigint(20) DEFAULT NULL,
  `damage_reward` blob,
  `alliance_reward` blob,
  `daily_reward` int(11) DEFAULT NULL,
  `summon_times` int(11) DEFAULT '0',
  `mtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

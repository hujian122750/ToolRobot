CREATE TABLE `GoldBox` (
  `uid` bigint(20) NOT NULL,
  `season` bigint(20) DEFAULT NULL,
  `free_times` blob,
  `score` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `score_reward` blob,
  `rank_reward` smallint(6) DEFAULT NULL,
  `hide_self_kingdom_rank` smallint(6) DEFAULT NULL,
  `hide_all_kingdom_rank` smallint(6) DEFAULT NULL,
  `utime` timestamp NULL DEFAULT NULL,
  `ctime` timestamp NULL DEFAULT NULL,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
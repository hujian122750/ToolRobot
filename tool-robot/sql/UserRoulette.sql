CREATE TABLE `UserRoulette` (
  `uid` bigint(20) NOT NULL,
  `season` bigint(20) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `step_reward` blob,
  `pos_reward` blob,
  `free_times` int(11) DEFAULT 0,
  `act_data` blob,
  `mtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
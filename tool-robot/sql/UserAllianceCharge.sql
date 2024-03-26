CREATE TABLE `UserAllianceCharge` (
  `uid` bigint(20) NOT NULL,
  `season` bigint(20) DEFAULT NULL,
  `gold` bigint(20) DEFAULT NULL,
  `alliance_gold` bigint(20) DEFAULT NULL,
  `alliance_id` bigint(20) DEFAULT NULL,
  `user_reward` blob,
  `alliance_reward` blob,
  `act_data` blob,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `effect_gold` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
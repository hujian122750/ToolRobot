CREATE TABLE `UserAllianceCharge2` (
  `uid` bigint(20) NOT NULL,
  `season` bigint(20) DEFAULT NULL,
  `gold` bigint(20) DEFAULT NULL,
  `alliance_gold` bigint(20) DEFAULT NULL,
  `alliance_pay_num` int(11) DEFAULT NULL,
  `alliance_id` bigint(20) DEFAULT NULL,
  `user_reward` blob,
  `alliance_reward` blob,
  `alliance_pay_num_reward` blob,
  `act_data` blob,
  `effect_gold` bigint(20) DEFAULT NULL,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
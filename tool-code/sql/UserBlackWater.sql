CREATE TABLE `UserBlackWater` (
  `uid` bigint unsigned NOT NULL,
  `user_injure` int unsigned NOT NULL DEFAULT 0 COMMENT "个人伤害",
  `user_logistics` int unsigned NOT NULL DEFAULT 0 COMMENT "个人后勤",
  `collected_reward` blob DEFAULT NULL COMMENT "领取奖励",
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(uid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
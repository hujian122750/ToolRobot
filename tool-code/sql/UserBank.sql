CREATE TABLE `UserBank` (
  `uid` bigint unsigned NOT NULL,
  `lock_info` blob COMMENT "槽位解锁情况 1 被锁 0 解锁",
  `banking_slot_id` bigint unsigned NOT NULL DEFAULT 0,
  `gold` bigint unsigned NOT NULL DEFAULT 0,
  `job_id` bigint unsigned NOT NULL DEFAULT 0,
  `dead_time` timestamp NOT NULL DEFAULT 0 COMMENT "可以获取利息的取钱时间",
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
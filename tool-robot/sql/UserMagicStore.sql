CREATE TABLE IF NOT EXISTS `UserMagicStore` (
  `uid` bigint unsigned NOT NULL,
  `last_sync_time` timestamp NOT NULL DEFAULT 0,
  `goods` blob,
  `buy_times` int unsigned NOT NULL DEFAULT 0 COMMENT "当日购买次数",
  `ctime` timestamp NOT NULL DEFAULT 0,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

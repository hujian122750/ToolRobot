CREATE TABLE `KingdomRevivalChest` (
  `uid` bigint unsigned NOT NULL,
  `completed_quest_amount` int unsigned NOT NULL DEFAULT 0,
  `opened_chest` BLOB DEFAULT NULL,
  `amount_utime` timestamp NOT NULL DEFAULT 0,
  `ctime` timestamp NOT NULL DEFAULT 0,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

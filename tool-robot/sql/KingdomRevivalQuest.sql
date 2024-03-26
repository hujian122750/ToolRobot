CREATE TABLE `KingdomRevivalQuest` (
  `uid` bigint unsigned NOT NULL,
  `quest_id` bigint unsigned NOT NULL,
  `state` tinyint unsigned NOT NULL COMMENT "0:current active, 1:completed but not collect reward",
  `progress` int unsigned NOT NULL DEFAULT 0,
  `quest_type` VARCHAR(100) NOT NULL,
  `ctime` timestamp NOT NULL DEFAULT 0,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(`uid`, `quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

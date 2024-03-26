CREATE TABLE `UserQuest` (
  `uid` bigint unsigned NOT NULL,
  `quest_id` bigint unsigned NOT NULL,
  `status` tinyint unsigned NOT NULL COMMENT "0:current active, 1:completed but not collect reward",
  `type` smallint unsigned NOT NULL COMMENT "1:recommend, 2:branch, >300:group",
  `category` VARCHAR(100) NOT NULL COMMENT "build, pvp, pve, rearch etc.",
  `progress` int unsigned NOT NULL DEFAULT 0,
  `ctime` timestamp NOT NULL DEFAULT 0,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(`uid`, `quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

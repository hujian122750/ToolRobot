CREATE TABLE `StrongHoldStory` (
  `uid` bigint unsigned NOT NULL,
  `quest_id` bigint unsigned NOT NULL,
  `status` tinyint unsigned NOT NULL COMMENT "0:current active, 1:completed but not collect reward",
  `progress` bigint unsigned NOT NULL,
  `category` VARCHAR(100) NOT NULL COMMENT "build, pvp, pve, rearch etc.",
  `ctime` timestamp NOT NULL DEFAULT 0,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(`uid`, `quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

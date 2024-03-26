CREATE TABLE `DailyQuest` (
    `uid` bigint unsigned NOT NULL,
    `quest_id` bigint unsigned NOT NULL,
    `category` varchar(100) DEFAULT '' COMMENT "类型",
    `progress` int unsigned NOT NULL DEFAULT 0,
    `status` tinyint unsigned NOT NULL COMMENT "0:current active, 1:completed but not collect reward, 2:collect reward",
    `ctime` timestamp NOT NULL DEFAULT 0,
    `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(`uid`, `quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

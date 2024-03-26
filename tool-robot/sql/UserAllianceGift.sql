CREATE TABLE `UserAllianceGift` (
   `uid` bigint unsigned NOT NULL DEFAULT 0,
   `gift_id` bigint unsigned NOT NULL DEFAULT 0,
   `status` tinyint unsigned NOT NULL DEFAULT 0,
   `reward_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT "对应的奖励shop internal id",
   `reward_count` int unsigned NOT NULL DEFAULT 0 COMMENT "奖励的数量",
   `ctime` timestamp NOT NULL DEFAULT 0,
   `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY(`uid`, `gift_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

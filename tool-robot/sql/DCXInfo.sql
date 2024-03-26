CREATE TABLE DCXInfo (
    `uid` bigint unsigned NOT NULL,
    `stage_id` bigint unsigned NOT NULL,
    `week_stage_id` bigint unsigned NOT NULL  DEFAULT 0,
    `hero_skill` blob DEFAULT NULL,
    `week_chest` blob DEFAULT NULL,
    `group_id` varchar(100) DEFAULT '',
    `data` blob DEFAULT NULL,
    `last_update_time` timestamp NOT NULL DEFAULT 0,
    `ctime` timestamp NOT NULL DEFAULT 0,
    `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
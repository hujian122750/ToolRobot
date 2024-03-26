CREATE TABLE `TimerQuest` (
    `uid` bigint unsigned NOT NULL,
    `quest_id` bigint unsigned NOT NULL,
    `internal_id` bigint unsigned NOT NULL COMMENT "对应Quest的Internal ID",
    `type` tinyint unsigned NOT NULL DEFAULT 0,
    `status` tinyint unsigned NOT NULL DEFAULT 0,
    `job_id` bigint unsigned NOT NULL DEFAULT 0,
    `ctime` timestamp NOT NULL DEFAULT 0,
    `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(`uid`, `quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

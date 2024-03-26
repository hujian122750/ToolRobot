CREATE TABLE DragonKnightTalent (
    `uid` bigint unsigned NOT NULL,
    `talent_id` bigint unsigned NOT NULL,
    `ctime` timestamp NOT NULL DEFAULT 0,
    `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`,`talent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

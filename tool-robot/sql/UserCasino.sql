CREATE TABLE `UserCasino`(
    `uid` bigint unsigned NOT NULL DEFAULT 0,
    `chip` bigint unsigned NOT NULL DEFAULT 0,
    `items` blob NOT NULL,
    `high_roller_items` blob NOT NULL,
    `is_high_roller_available` smallint unsigned NOT NULL DEFAULT 0 COMMENT "1 available",
    `last_free_play_time` timestamp NOT NULL DEFAULT 0,
    `last_refresh_time` timestamp NOT NULL DEFAULT 0,
    PRIMARY KEY (uid)
) ENGINE = INNODB DEFAULT CHARSET=utf8;
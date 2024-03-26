CREATE TABLE UserAllianceCelebration (
    `uid` bigint unsigned NOT NULL DEFAULT 0,
    `alliance_id` bigint unsigned NOT NULL DEFAULT 0,
    `refresh_time` timestamp NOT NULL DEFAULT 0,
    `point` BIGINT UNSIGNED NOT NULL DEFAULT 0,
    `claimed_chest` BLOB COMMENT '领取的宝箱, [1, 2, 3]',
    ctime timestamp NOT NULL DEFAULT 0,
    mtime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (uid, alliance_id)
) ENGINE = INNODB DEFAULT CHARSET utf8;
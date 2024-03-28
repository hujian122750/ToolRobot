CREATE TABLE DragonParts2 (
`uid` BIGINT UNSIGNED NOT NULL,
`group_id` BIGINT UNSIGNED NOT NULL,
`level` TINYINT NOT NULL DEFAULT 0,
`xp` BIGINT UNSIGNED NOT NULL DEFAULT 0,
`type` TINYINT NOT NULL DEFAULT 0,
`ctime` TIMESTAMP NOT NULL DEFAULT 0,
`mtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY ( `uid`, `group_id` )
) ENGINE = INNODB DEFAULT CHARSET = utf8;
CREATE TABLE IF NOT EXISTS UserKingdomMap (
                                              `uid` bigint unsigned NOT NULL DEFAULT 0,
                                              `block_id` int unsigned NOT NULL DEFAULT 0,
                                              `map_x` int unsigned not null default 0,
                                              `map_y` int unsigned not null default 0,
                                              `slot_id` bigint unsigned NOT NULL DEFAULT 0,
                                              `type` varchar(50) not null default '',
                                              `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
                                              `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                              PRIMARY KEY (`uid`, `map_x`, `map_y`)
) ENGINE=INNODB DEFAULT CHARSET utf8;

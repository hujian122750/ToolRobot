CREATE TABLE IF NOT EXISTS TreasureMap (
    uid int unsigned not null default 0,
    map_id int unsigned NOT NULL DEFAULT 0,
    map_x int unsigned not null default 0,
    map_y int unsigned not null default 0,
    config_id bigint unsigned NOT NULL default 0,
    item_id bigint unsigned not null default 0 comment '道具id',
    ctime timestamp NOT NULL DEFAULT 0,
    mtime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (uid, map_id)
) ENGINE=INNODB DEFAULT CHARSET utf8;
CREATE TABLE IF NOT EXISTS SevenDays (
    uid int unsigned not null default 0,
    config_id bigint unsigned not null default 0,
    days tinyint unsigned not null default 0,
    start_time timestamp NOT NULL DEFAULT 0,
    rewards_status tinyint unsigned not null default 0 comment '0未领取福利,1已领取福利',
    items blob not null,
    ctime timestamp NOT NULL DEFAULT 0,
    mtime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (uid, config_id)
) ENGINE=INNODB DEFAULT CHARSET utf8;
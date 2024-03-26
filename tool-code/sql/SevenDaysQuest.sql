CREATE TABLE IF NOT EXISTS SevenDaysQuest (
    uid int unsigned not null default 0,
    quest_id int unsigned NOT NULL DEFAULT 0,
    days tinyint unsigned not null default 0,
    start_time timestamp NOT NULL DEFAULT 0,
    quest_type varchar(30) not null default '',
    status tinyint unsigned not null default 0,
    ctime timestamp NOT NULL DEFAULT 0,
    mtime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (uid, quest_id)
) ENGINE=INNODB DEFAULT CHARSET utf8;
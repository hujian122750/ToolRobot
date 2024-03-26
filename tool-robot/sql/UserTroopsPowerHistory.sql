CREATE TABLE IF NOT EXISTS UserTroopsPowerHistory  (
    uid bigint unsigned NOT NULL DEFAULT 0,
    dt bigint(20) NOT NULL COMMENT '统计时间,按天统计',
    power bigint(20) NOT NULL DEFAULT 0 COMMENT '当天最高战力',
    ctime timestamp NOT NULL DEFAULT 0,
    mtime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (uid, dt)
) ENGINE = INNODB DEFAULT CHARSET=utf8;

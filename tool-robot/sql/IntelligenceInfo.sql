CREATE TABLE IntelligenceInfo (
    `uid` bigint unsigned NOT NULL,
    `title_level` int unsigned NOT NULL DEFAULT 1 COMMENT "title level",
    `power_level` int unsigned NOT NULL DEFAULT 1 COMMENT "power level",
    `total_intel_num` int unsigned NOT NULL DEFAULT 0 COMMENT "inteligence count",
    `last_refresh_time` int unsigned NOT NULL DEFAULT 0 COMMENT "上次刷新时间",
    `back_tasks` blob COMMENT '后备任务列表',
    `level_init_tasks` blob COMMENT '当前爵位已经完成的初始任务列表',
    `need_exclusive` blob COMMENT '待刷新的特殊任务',
    `unlock_treasure` blob COMMENT '解锁的线索',
    `unlock_treasure_group` blob COMMENT '解锁的故事',
    `ext_data` blob COMMENT '用来记录一些杂项',
    `ctime` timestamp NOT NULL DEFAULT 0 COMMENT "created on",
    `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (uid)
) ENGINE=INNODB DEFAULT CHARSET utf8;

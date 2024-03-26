CREATE TABLE if not exists `UserQuestAll` (
    `uid` BIGINT UNSIGNED NOT NULL DEFAULT 0,
    `quest_id` BIGINT UNSIGNED NOT NULL DEFAULT 0,
    `group_type` TINYINT NOT NULL DEFAULT 0 COMMENT '任务系统，如 美德、章节、王者之路等',
    `progress` INT(11) NOT NULL DEFAULT 0 COMMENT '进度，<= 配置表的值',
    `status` TINYINT NOT NULL DEFAULT 0 COMMENT '0: 未完成, 1: 完成任务且可以领取, 2: 领取完毕',
    `category` varchar(64) NOT NULL COMMENT '埋点位置',
    `ctime` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
    `mtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`, `quest_id`)
) ENGINE = INNODB DEFAULT CHARSET utf8;
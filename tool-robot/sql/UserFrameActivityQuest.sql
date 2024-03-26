CREATE TABLE `UserFrameActivityQuest`
(
    `uid`       bigint unsigned  NOT NULL,
    `activity_id` bigint unsigned NOT NULL default 0,
    `quest_id`  bigint unsigned  NOT NULL COMMENT 'task_id',
    `progress`  bigint unsigned  NOT NULL DEFAULT '0' COMMENT '进度',
    `status`    tinyint unsigned NOT NULL DEFAULT '0' COMMENT '任务状态 0未完成 1已完成 2已领奖',
    `category`  VARCHAR(100) NOT NULL COMMENT "build, pvp, pve, rearch etc.",
    `ctime`     timestamp        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `mtime`     timestamp        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`, `activity_id`, `quest_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT '框架活动任务';
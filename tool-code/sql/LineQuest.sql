CREATE TABLE `LineQuest`
(
    `uid`       bigint unsigned  NOT NULL,
    `quest_id`  bigint unsigned  NOT NULL COMMENT 'task_id',
    `activity_id` bigint unsigned NOT NULL default 0,
    `progress`  bigint unsigned  NOT NULL DEFAULT '0' COMMENT '进度',
    `status`    tinyint unsigned NOT NULL DEFAULT '0' COMMENT '任务状态 0未完成 1已完成 2已领奖',
    `resetTime` timestamp        NOT NULL DEFAULT 0 COMMENT '上次重置时间',
    `ctime`     timestamp        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `mtime`     timestamp        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`, `quest_id`,`activity_id`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT '连线每日任务';
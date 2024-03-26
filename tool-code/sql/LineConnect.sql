CREATE TABLE `LineConnect`
(
    `uid`       bigint(20) unsigned NOT NULL,
    `grids`     BLOB COMMENT '格子状态',
    `connects`  BLOB COMMENT '连线状态',
    `bigReward` bool                NOT NULL DEFAULT '0' COMMENT '大奖状态',
    `lightPlan` int(11)             NOT NULL DEFAULT '0' COMMENT '点亮方案，客户端用',
    `resetTime` timestamp           NOT NULL DEFAULT 0 COMMENT '上次重置时间',
    `ctime`     timestamp           NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `mtime`     timestamp           NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT '连线活动';
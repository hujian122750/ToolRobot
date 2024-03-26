CREATE TABLE `DivineCard`
(
    `uid`             bigint(20) unsigned  NOT NULL,
    `card_id`         bigint(20) unsigned  NOT NULL,
    `activity_id`     bigint(20)           NOT NULL DEFAULT '0' COMMENT '绑定的活动id',
    `card_num`        bigint(20)           NOT NULL DEFAULT '0' COMMENT '卡牌数量',
    `change_num`      bigint(20)           NOT NULL DEFAULT '0' COMMENT '变化值',
    `star`            smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '星级',
    `benefits`        blob COMMENT '增益',
    `ext`             blob COMMENT '扩展',
    `ctime`           timestamp            NOT NULL DEFAULT '0000-00-00 00:00:00',
    `mtime`           timestamp            NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`, `card_id`),
    KEY `ids_actid` (`uid`, `activity_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
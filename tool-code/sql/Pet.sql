CREATE TABLE `Pet`
(
    `uid`             bigint(20) unsigned  NOT NULL,
    `pet_id`       bigint(20) unsigned  NOT NULL,
    `level`           smallint(5) unsigned NOT NULL DEFAULT '0',
    `xp`              bigint(20) unsigned  NOT NULL DEFAULT '0',
    `star`            smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '星级',
    `status`          tinyint(4) unsigned  NOT NULL DEFAULT '0' COMMENT '出征状态: 0: 闲置, 1: 城市驻防, 2: 军队出征',
    `march_id`        bigint(20)           NOT NULL DEFAULT '0' COMMENT '随军出征的MarchId',
    `ext_skill_level` int unsigned  NOT NULL DEFAULT '0' COMMENT '额外增加的技能等级',
    `ctime`           timestamp            NOT NULL DEFAULT '0000-00-00 00:00:00',
    `mtime`           timestamp            NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`, `pet_id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

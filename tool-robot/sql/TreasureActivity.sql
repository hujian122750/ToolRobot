CREATE TABLE `TreasureActivity`
(
    `uid`       bigint(20) unsigned NOT NULL,
    `season_id`  int(11) default 0,
    `shop_season_id`  int(11) default 0,
    `exchanges`  BLOB COMMENT '兑换详情',
    `rewards`  BLOB COMMENT '奖励详情',
    `ctime`     timestamp           NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `mtime`     timestamp           NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT '连线活动';
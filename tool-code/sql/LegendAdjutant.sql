CREATE TABLE `LegendAdjutant`
(
    `uid`      bigint(20) unsigned NOT NULL,
    `adjutant` bigint(20) unsigned NOT NULL COMMENT '副官id',
    `open`     tinyint(3) unsigned NOT NULL COMMENT '0关闭 1开启',
    `ctime`    timestamp           NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `mtime`    timestamp           NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`, `adjutant`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

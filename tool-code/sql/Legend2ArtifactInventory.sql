CREATE TABLE `Legend2ArtifactInventory` (
        `uid` bigint(20) unsigned NOT NULL DEFAULT '0',
        `inventory_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '背包唯一索引',
        `artifact_id` int(20) unsigned NOT NULL DEFAULT '0' COMMENT '武器配置internal id',
        `item_property_id` int(10) unsigned NOT NULL COMMENT 'the weapon item internal id',
        `equiped` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '是否装备(0 否； 1 是)',
        `legend_id` bigint(20) DEFAULT NULL,
        `refine_info` blob COMMENT '兵决属性列表[{"benefit_id":1, "quality":2, "progress":3}]}',
        `last_refine_attr` blob COMMENT '兵决上次未保存属性[] 或者 [{"benefit_id":1, "quality":2}]',
        `last_refine_progress` blob COMMENT '兵决上次未保存属性增益[] 或者 [1,2,3]',
        `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
        `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        PRIMARY KEY (`uid`,`inventory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
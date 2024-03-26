CREATE TABLE `MeteoroliteNpc` (
                                       `uid` bigint(20) unsigned NOT NULL,
                                       `slot_id` int unsigned NOT NULL COMMENT '任务槽位id',
                                       `npc_id` bigint(20) unsigned NOT NULL COMMENT 'intelligence_main_level.internalId',
                                       `status` int(11) NOT NULL DEFAULT '0' COMMENT '任务状态 0 可接、1正在进行、2 已完成',
                                       `map_x` int unsigned NOT NULL COMMENT '地图坐标x',
                                       `map_y` int unsigned NOT NULL COMMENT '地图坐标y',
                                       `block_id` int unsigned NOT NULL COMMENT 'block_id',

                                       `march_id` bigint unsigned  default 0 COMMENT 'march_id',
                                       `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
                                       `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                       PRIMARY KEY (`uid`,`slot_id`) USING BTREE,
                                       INDEX index_xy(`map_x`,`map_y`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
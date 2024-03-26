CREATE TABLE `Legend2TreasureTask` (
                                       `uid` bigint(20) unsigned NOT NULL,
                                       `t_id` bigint(20) unsigned NOT NULL COMMENT 'task_id',
                                       `status` int(11) NOT NULL DEFAULT '0' COMMENT '任务状态 0 可接、1正在进行、2 已完成',
                                       `r_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '奖励id',
                                       `legends` blob COMMENT '英雄列表',
                                       `finish_time` int(11) NOT NULL DEFAULT '0' COMMENT '完成时间',
                                       `ctime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
                                       `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                                       PRIMARY KEY (`uid`,`t_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `Decoration2` (
    `uid` bigint unsigned NOT NULL,
    `group_id` bigint(20) unsigned NOT NULL,
    `decoration_type` bigint unsigned NOT NULL COMMENT '皮肤类型 display_sort.id',
    `list_ids` blob COMMENT '当前激活的皮肤',
    `end_time` bigint NOT NULL DEFAULT 0 comment '有效期截止时间, -1 为永久有效',
    `ctime` timestamp NOT NULL DEFAULT 0,
    `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
     PRIMARY KEY(`uid`, `group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
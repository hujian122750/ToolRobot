CREATE TABLE `UserFrameActivity` (
  `uid` bigint NOT NULL,
  `_activity_internal_id` int NOT NULL COMMENT '活动配置ID',
  `_content` blob COMMENT '活动个人数据',
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`, `_activity_internal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
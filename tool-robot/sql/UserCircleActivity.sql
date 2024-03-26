CREATE TABLE `UserCircleActivity` (
  `uid` BIGINT UNSIGNED NOT NULL,
  `_activity_internal_id` INT UNSIGNED NOT NULL,
  `_activity_type` INT UNSIGNED NOT NULL,
  `_activity_uuid` INT UNSIGNED NOT NULL,
  `_last_circle_start_time_stamp` INT UNSIGNED NOT NULL,
  `_last_db_init_time_stamp` INT UNSIGNED NOT NULL,
  `_content` BLOB NULL,
  `mtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ctime` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`, `_activity_internal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=Dynamic;
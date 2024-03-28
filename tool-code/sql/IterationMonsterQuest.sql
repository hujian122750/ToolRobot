CREATE TABLE `IterationMonsterQuest` (
  `uid` BIGINT UNSIGNED NOT NULL,
  `type` INT UNSIGNED NOT NULL,
  `quests` BLOB NULL DEFAULT NULL,
  `status` BLOB NULL DEFAULT NULL,
  `max_kill_level` INT UNSIGNED NOT NULL DEFAULT 0,
  `mtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ctime` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`, `type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `SpreeDayShop` (
  `uid` BIGINT UNSIGNED NOT NULL,
  `season_id` BIGINT UNSIGNED NOT NULL DEFAULT 0,
  `c_coin` INT UNSIGNED NOT NULL DEFAULT 0,
  `a_coin` INT UNSIGNED NOT NULL DEFAULT 0,
  `left_gold` INT UNSIGNED NOT NULL DEFAULT 0,
  `c_items` BLOB NULL DEFAULT NULL,
  `a_items` BLOB NULL DEFAULT NULL,
  `mtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ctime` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
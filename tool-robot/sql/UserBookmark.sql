CREATE TABLE `UserBookmark` (
  `uid` bigint unsigned NOT NULL,
  `world_id` bigint unsigned NOT NULL,
  `map_x` int unsigned  NOT NULL,
  `map_y` int unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `type` tinyint unsigned NOT NULL DEFAULT 0 COMMENT "0:other 1:friend 2:enemy",
  `favourite` tinyint unsigned NOT NULL DEFAULT 0 COMMENT "0:normal, 1:special",
  `ctime` timestamp NOT NULL DEFAULT 0,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(`uid`, `world_id`, `map_x`, `map_y`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

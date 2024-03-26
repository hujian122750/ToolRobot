CREATE TABLE `UserConsumable` (
  `uid` bigint unsigned NOT NULL,
  `item_property_id` bigint unsigned NOT NULL DEFAULT 0,
  `quantity` bigint unsigned NOT NULL DEFAULT 0,
  `property` blob,
  `sell_quantity` blob NOT NULL,
  `sell_cd_time` blob NOT NULL,
  `ext` blob NOT NULL,
  `expire_times` BLOB NOT NULL,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(`uid`, `item_property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

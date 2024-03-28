CREATE TABLE IF NOT EXISTS UserInventory (
    uid bigint unsigned,
    item_id bigint unsigned COMMENT "a ticket",
    item_property_id int unsigned NOT NULL COMMENT "the equip internal id",
    enhanced smallint unsigned NOT NULL DEFAULT 0 COMMENT "the enhance count",
    equiped tinyint unsigned NOT NULL DEFAULT 0 COMMENT "equiped or not",
    inlaid_gem BLOB COMMENT '{slot_id => UserGem.id}',
    in_sale tinyint(3) unsigned NOT NULL DEFAULT '0',
    sell_cd_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
    ext blob NOT NULL,
    `refine` blob NOT NULL COMMENT '洗炼等级',
    `refine_times` blob NOT NULL COMMENT '洗炼次数',
    `star` int unsigned NOT NULL  COMMENT '星级',
    `rune_exp` bigint unsigned NOT NULL  COMMENT '符文经验',
    `rune_point` int unsigned NOT NULL  COMMENT '符文进阶点数',
    `rune_level` int unsigned NOT NULL  COMMENT '符文等级',
    `cost_log` blob COMMENT '消耗数据',
    ctime timestamp not null default 0,
    mtime timestamp not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (uid, item_id)
) ENGINE = INNODB DEFAULT CHARSET utf8;
CREATE TABLE IF NOT EXISTS DragonKnightInventory (
    uid bigint unsigned,
    item_id bigint unsigned COMMENT "a ticket",
    item_property_id int unsigned NOT NULL COMMENT "the equip internal id",
    enhanced smallint unsigned NOT NULL DEFAULT 0 COMMENT "the enhance count",
    equiped tinyint unsigned NOT NULL DEFAULT 0 COMMENT "equiped or not",
    `inlaid_gem` BLOB COMMENT '{slot_id => UserGem.id}',
    ctime timestamp not null default 0,
    mtime timestamp not null default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (uid, item_id)
) ENGINE = INNODB DEFAULT CHARSET utf8;

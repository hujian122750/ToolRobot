CREATE TABLE IF NOT EXISTS `UserGem` (
    `uid` BIGINT UNSIGNED NOT NULL DEFAULT 0,
    `id` BIGINT UNSIGNED NOT NULL DEFAULT 0,
    `config_id` INT(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'equipment_gem.Internal_ID',
    `version` TINYINT NOT NULL DEFAULT 0 COMMENT '区分新旧接口和宝石版本',
    `quantity` BIGINT NOT NULL DEFAULT 1,
    `slot_type` ENUM('lord', 'dragon_knight') NOT NULL DEFAULT 'lord' COMMENT '宝石针对的装备出处',
    `gem_type` TINYINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: 精炼宝石, 其他: 其他形状的宝石',
    `inlaid` BIGINT UNSIGNED NOT NULL DEFAULT 0 COMMENT '镶嵌装备id',
    `exp` BIGINT UNSIGNED NOT NULL DEFAULT 0,
    `level` MEDIUMINT UNSIGNED NOT NULL DEFAULT 0,
    `ctime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `mtime` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`uid`, `id`),
    KEY `idx_on_uc` (`uid`, `config_id`),
    KEY `idx_on_us` (`uid`, `slot_type`, `inlaid`),
    KEY `idx_on_sg` (`uid`, `slot_type`, `gem_type`)
) ENGINE = INNODB DEFAULT CHARSET utf8;

CREATE TABLE DragonKnightSkill (
    uid bigint unsigned NOT NULL,
    skill_id bigint unsigned NOT NULL,
    level mediumint unsigned NOT NULL DEFAULT 0,
    ctime timestamp NOT NULL DEFAULT 0,
    mtime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (uid,skill_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

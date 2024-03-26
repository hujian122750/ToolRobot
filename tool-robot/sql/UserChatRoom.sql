CREATE TABLE `UserChatRoom` (
   `uid` bigint unsigned NOT NULL DEFAULT 0,
   `room_id` bigint unsigned NOT NULL DEFAULT 0,
   `is_owner` tinyint unsigned NOT NULL DEFAULT 0,
   inviter_uid bigint unsigned not null default 0 comment '邀请者uid',
    ctime timestamp NOT NULL DEFAULT 0,
    mtime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY(uid, `room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

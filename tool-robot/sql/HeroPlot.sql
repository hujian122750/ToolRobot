CREATE TABLE `HeroPlot` (
  `uid` bigint(20) NOT NULL,
  `unlock_clue_list` blob COMMENT '当前已解锁线索id列表',
  `gain_award_clue_list` blob COMMENT '已经领取奖励的线索',
  `cur_activity_id` bigint(20) not null,
  `gain_final_award` tinyint unsigned NOT NULL COMMENT "0:not gain, 1:already gain",
  PRIMARY KEY(`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

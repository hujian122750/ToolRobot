CREATE TABLE `UserBenefit` (
  `uid` bigint unsigned NOT NULL,
  `ti1` blob COMMENT 'prop_infantry_health_percent',
  `ti2` blob COMMENT 'prop_infantry_attack_percent',
  `ti3` blob COMMENT 'prop_infantry_defense_percent',
  `ti9` blob COMMENT 'prop_infantry_damage_increase_percent',
  `tia` blob COMMENT 'prop_infantry_damage_decrease_percent',
  `tc1` blob COMMENT 'prop_cavalry_health_percent',
  `tc2` blob COMMENT 'prop_cavalry_attack_percent',
  `tc3` blob COMMENT 'prop_cavalry_defense_percent',
  `tc9` blob COMMENT 'prop_cavalry_damage_increase_percent',
  `tca` blob COMMENT 'prop_cavalry_damage_decrease_percent',
  `tr1` blob COMMENT 'prop_ranged_health_percent',
  `tr2` blob COMMENT 'prop_ranged_attack_percent',
  `tr3` blob COMMENT 'prop_ranged_defense_percent',
  `tr9` blob COMMENT 'prop_ranged_damage_increase_percent',
  `tra` blob COMMENT 'prop_ranged_damage_decrease_percent',
  `ts1` blob COMMENT 'prop_siege_health_percent',
  `ts2` blob COMMENT 'prop_siege_attack_percent',
  `ts3` blob COMMENT 'prop_siege_defense_percent',
  `ts9` blob COMMENT 'prop_siege_damage_increase_percent',
  `tsa` blob COMMENT 'prop_siege_damage_decrease_percent',
  `ta1` blob COMMENT 'prop_army_health_percent',
  `ta2` blob COMMENT 'prop_army_attack_percent',
  `ta3` blob COMMENT 'prop_army_defense_percent',
  `ta4` blob COMMENT 'prop_army_upkeep_percent',
  `ta5` blob COMMENT 'prop_army_training_time_percent',
  `ta6` blob COMMENT 'prop_army_healing_time_percent',
  `ta7` blob COMMENT 'prop_army_speed_percent',
  `ta8` blob COMMENT 'prop_army_load_percent',
  `ta9` blob COMMENT 'prop_army_damage_increase_percent',
  `taa` blob COMMENT 'prop_army_damage_decrease_percent',
  `tab` blob COMMENT 'prop_defender_army_attack_percent',
  `tac` blob COMMENT 'prop_defender_army_defense_percent',
  `tad` blob COMMENT 'prop_defender_army_health_percent',
  `tt1` blob COMMENT 'prop_trap_health_percent',
  `tt2` blob COMMENT 'prop_trap_attack_percent',
  `tt3` blob COMMENT 'prop_trap_defense_percent',
  `tt5` blob COMMENT 'prop_trap_capacity_value',
  `tt6` blob COMMENT 'prop_trap_capacity_percent',
  `tt7` blob COMMENT 'prop_trap_damage_increase_percent',
  `tt8` blob COMMENT 'prop_trap_damage_decrease_percent',
  `tt9` blob COMMENT 'prop_trap_training_time_percent',
  `tta` blob COMMENT 'prop_trap_training_capacity_base_value',
  `ttb` blob COMMENT 'prop_trap_training_capacity_value',
  `ttc` blob COMMENT 'prop_trap_training_capacity_percent',
  `rf2` blob COMMENT 'prop_food_generation_value',
  `rf3` blob COMMENT 'prop_food_generation_percent',
  `rf5` blob COMMENT 'prop_food_storage_value',
  `rf6` blob COMMENT 'prop_food_storage_percent',
  `rf7` blob COMMENT 'prop_food_gather_percent',
  `rw2` blob COMMENT 'prop_wood_generation_value',
  `rw3` blob COMMENT 'prop_wood_generation_percent',
  `rw5` blob COMMENT 'prop_wood_storage_value',
  `rw6` blob COMMENT 'prop_wood_storage_percent',
  `rw7` blob COMMENT 'prop_wood_gather_percent',
  `ro2` blob COMMENT 'prop_ore_generation_value',
  `ro3` blob COMMENT 'prop_ore_generation_percent',
  `ro5` blob COMMENT 'prop_ore_storage_value',
  `ro6` blob COMMENT 'prop_ore_storage_percent',
  `ro7` blob COMMENT 'prop_ore_gather_percent',
  `rs2` blob COMMENT 'prop_silver_generation_value',
  `rs3` blob COMMENT 'prop_silver_generation_percent',
  `rs5` blob COMMENT 'prop_silver_storage_value',
  `rs6` blob COMMENT 'prop_silver_storage_percent',
  `rs7` blob COMMENT 'prop_silver_gather_percent',
  `rr2` blob COMMENT 'prop_resource_generation_value',
  `rr3` blob COMMENT 'prop_resource_generation_percent',
  `rr5` blob COMMENT 'prop_resource_storage_value',
  `rr6` blob COMMENT 'prop_resource_storage_percent',
  `rr7` blob COMMENT 'prop_resource_gather_percent',
  `trn5` blob COMMENT 'prop_army_training_capacity_value',
  `trn6` blob COMMENT 'prop_army_training_capacity_percent',
  `trn7` blob COMMENT 'prop_trap_capacity_base_value',
  `trn8` blob COMMENT 'prop_army_training_capacity_base_value',
  `trn9` blob COMMENT 'prop_train_army_cost_decrease_percent',
  `sto1` blob COMMENT 'prop_storage_protect_base_value',
  `sto2` blob COMMENT 'prop_storage_protect_value',
  `sto3` blob COMMENT 'prop_storage_protect_percent',
  `trd1` blob COMMENT 'prop_trade_capacity_base_value',
  `trd2` blob COMMENT 'prop_trade_capacity_value',
  `trd3` blob COMMENT 'prop_trade_capacity_percent',
  `trd4` blob COMMENT 'prop_tradetax_value',
  `hl1` blob COMMENT 'prop_healing_capacity_base_value',
  `hl2` blob COMMENT 'prop_healing_capacity_value',
  `hl3` blob COMMENT 'prop_healing_capacity_percent',
  `hl4` blob COMMENT 'prop_wounded_percent',
  `hl5` blob COMMENT 'prop_healing_army_cost_decrease_percent',
  `mar1` blob COMMENT 'prop_march_capacity_base_value',
  `mar2` blob COMMENT 'prop_march_capacity_value',
  `mar3` blob COMMENT 'prop_march_capacity_percent',
  `mar4` blob COMMENT 'prop_march_limit_value',
  `mar5` blob COMMENT 'prop_march_limit_base_value',
  `mar6` blob COMMENT 'prop_pve_speed_percent',
  `ren1` blob COMMENT 'prop_city_reinforcement_capacity_base_value',
  `ren2` blob COMMENT 'prop_city_reinforcement_capacity_value',
  `ren3` blob COMMENT 'prop_city_reinforcement_capacity_percent',
  `ral1` blob COMMENT 'prop_rally_capacity_base_value',
  `ral2` blob COMMENT 'prop_rally_capacity_value',
  `ral3` blob COMMENT 'prop_rally_capacity_percent',
  `con1` blob COMMENT 'prop_construction_time_percent',
  `con2` blob COMMENT 'prop_construction_time_reduction_percent',
  `res1` blob COMMENT 'prop_research_time_percent',
  `res2` blob COMMENT 'prop_research_time_reduction_percent',
  `cit1` blob COMMENT 'prop_city_defense_value',
  `spd1` blob COMMENT 'prop_speedup_time_value',
  `hr1` blob COMMENT 'prop_hero_spirit_recover_speed_percent',
  `hr2` blob COMMENT 'prop_monster_spirit_cost_reduction_percent',
  `dg1` blob COMMENT 'prop_dragon_light_reduce_percent',
  `dg2` blob COMMENT 'prop_dragon_dark_reduce_percent',
  `at1` blob COMMENT 'prop_alliance_member_value',
  `at2` blob COMMENT 'prop_alliance_help_value',
  `at3` blob COMMENT 'prop_alliance_help_max_value',
  `at4` blob COMMENT 'prop_rally_slot_value',
  `wt1` blob COMMENT 'prop_scout_level_value',
  `wt2` blob COMMENT 'prop_antiscout_level_value',
  `cs1` blob COMMENT 'prop_crafting_steel_cost_percent',
  `ct1` blob COMMENT 'prop_crafting_time_percent',
  `di01` blob COMMENT  'prop_infantry_attack_infantry_damage_increase_percent',
  `di02` blob COMMENT  'prop_infantry_attack_ranged_damage_increase_percent',
  `di03` blob COMMENT  'prop_infantry_attack_cavalry_damage_increase_percent',
  `di04` blob COMMENT  'prop_infantry_attack_siege_damage_increase_percent',
  `di05` blob COMMENT  'prop_ranged_attack_infantry_damage_increase_percent',
  `di06` blob COMMENT  'prop_ranged_attack_ranged_damage_increase_percent',
  `di07` blob COMMENT  'prop_ranged_attack_cavalry_damage_increase_percent',
  `di08` blob COMMENT  'prop_ranged_attack_siege_damage_increase_percent',
  `di09` blob COMMENT  'prop_cavalry_attack_infantry_damage_increase_percent',
  `di10` blob COMMENT  'prop_cavalry_attack_ranged_damage_increase_percent',
  `di11` blob COMMENT  'prop_cavalry_attack_cavalry_damage_increase_percent',
  `di12` blob COMMENT  'prop_cavalry_attack_siege_damage_increase_percent',
  `di13` blob COMMENT  'prop_siege_attack_infantry_damage_increase_percent',
  `di14` blob COMMENT  'prop_siege_attack_ranged_damage_increase_percent',
  `di15` blob COMMENT  'prop_siege_attack_cavalry_damage_increase_percent',
  `di16` blob COMMENT  'prop_siege_attack_siege_damage_increase_percent',
  `di17` blob COMMENT  'prop_infantry_defend_infantry_damage_increase_percent',
  `di18` blob COMMENT  'prop_infantry_defend_ranged_damage_increase_percent',
  `di19` blob COMMENT  'prop_infantry_defend_cavalry_damage_increase_percent',
  `di20` blob COMMENT  'prop_infantry_defend_siege_damage_increase_percent',
  `di21` blob COMMENT  'prop_ranged_defend_infantry_damage_increase_percent',
  `di22` blob COMMENT  'prop_ranged_defend_ranged_damage_increase_percent',
  `di23` blob COMMENT  'prop_ranged_defend_cavalry_damage_increase_percent',
  `di24` blob COMMENT  'prop_ranged_defend_siege_damage_increase_percent',
  `di25` blob COMMENT  'prop_cavalry_defend_infantry_damage_increase_percent',
  `di26` blob COMMENT  'prop_cavalry_defend_ranged_damage_increase_percent',
  `di27` blob COMMENT  'prop_cavalry_defend_cavalry_damage_increase_percent',
  `di28` blob COMMENT  'prop_cavalry_defend_siege_damage_increase_percent',
  `di29` blob COMMENT  'prop_siege_defend_infantry_damage_increase_percent',
  `di30` blob COMMENT  'prop_siege_defend_ranged_damage_increase_percent',
  `di31` blob COMMENT  'prop_siege_defend_cavalry_damage_increase_percent',
  `di32` blob COMMENT  'prop_siege_defend_siege_damage_increase_percent',
  `di33` blob COMMENT  'prop_siege_distance_attack_traps_damage_increase_percent',
  `di34` blob COMMENT  'prop_drop_attack_infantry_damage_increase_percent',
  `di35` blob COMMENT  'prop_drop_attack_ranged_damage_increase_percent',
  `di36` blob COMMENT  'prop_drop_attack_cavalry_damage_increase_percent',
  `di37` blob COMMENT  'prop_stationary_attack_infantry_damage_increase_percent',
  `di38` blob COMMENT  'prop_stationary_attack_ranged_damage_increase_percent',
  `di39` blob COMMENT  'prop_stationary_attack_cavalry_damage_increase_percent',
  `di40` blob COMMENT  'prop_targeted_attack_infantry_damage_increase_percent',
  `di41` blob COMMENT  'prop_targeted_attack_ranged_damage_increase_percent',
  `di42` blob COMMENT  'prop_targeted_attack_cavalry_damage_increase_percent',
  `tf1` blob COMMENT  'prop_troop_formation_save_base_value',
  `tf2` blob COMMENT  'prop_troop_formation_save_value',
  `eq1` blob COMMENT  'prop_equipment_save_base_value',
  `eq2` blob COMMENT  'prop_equipment_save_value',
  `bs01` blob COMMENT 'prop_construct_food_cost_value',
  `bs02` blob COMMENT 'prop_construct_wood_cost_value',
  `bs03` blob COMMENT 'prop_construct_ore_cost_value',
  `bs04` blob COMMENT 'prop_construct_silver_cost_value',
  `bs05` blob COMMENT 'prop_research_food_cost_value',
  `bs06` blob COMMENT 'prop_research_wood_cost_value',
  `bs07` blob COMMENT 'prop_research_ore_cost_value',
  `bs08` blob COMMENT 'prop_research_silver_cost_value',
  `bs09` blob COMMENT 'prop_construct_food_cost_percent',
  `bs10` blob COMMENT 'prop_construct_wood_cost_percent',
  `bs11` blob COMMENT 'prop_construct_ore_cost_percent',
  `bs12` blob COMMENT 'prop_construct_silver_cost_percent',
  `bs13` blob COMMENT 'prop_research_food_cost_percent',
  `bs14` blob COMMENT 'prop_research_wood_cost_percent',
  `bs15` blob COMMENT 'prop_research_ore_cost_percent',
  `bs16` blob COMMENT 'prop_research_silver_cost_percent',
  `bs17` blob COMMENT 'prop_construct_noble_signet_cost_percent',
  `bs18` blob COMMENT 'prop_in_6_row_crit_percent',
  `bs19` blob COMMENT 'prop_rally_storm_castle_death_percent',
  `sk1` blob COMMENT 'prop_talent_extra_scheme_value',
  `di43` blob COMMENT 'prop_battle_perturn_aoe_percent',
  `rdp1` blob COMMENT 'prop_pve_reward_double_percent',
  `gc01` blob COMMENT 'prop_building_glory_material_1_cost_decrease_value',
  `ch01` blob COMMENT 'prop_wounded_soldier_conversion_rate_percent',
  `ch02` blob COMMENT 'prop_church_capacity_rate_percent',
  `mp01` blob COMMENT 'prop_trading_assistance_send_weight_value',
  `mp02` blob COMMENT 'prop_trading_assistance_send_weight_percent',
  `iap01` blob COMMENT 'prop_iap_package_gold_increase_percent',
  `asp1` blob NULL DEFAULT NULL,
  `asp2` blob NULL DEFAULT NULL,
  `asp3` blob NULL DEFAULT NULL,
  `asp4` blob NULL DEFAULT NULL,
  `asp5` blob NULL DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT 0,
  `mtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(uid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=Dynamic;
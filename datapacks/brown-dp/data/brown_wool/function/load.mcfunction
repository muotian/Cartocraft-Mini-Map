# 執行者：無
# 執行位置：世界重生點

# 這是 load 函數，每當進入世界時，或是打 /reload 指令時都會執行一次。
# 很適合用來建立記分板，或是其它只需要執行一次的事情。

#say 載入成功




scoreboard objectives add brown_wool.death deathCount

# 劇情
function brown_wool:narrative/load
scoreboard objectives add brown_wool.thunder_spirit.narrative_marker dummy
scoreboard objectives add brown_wool.thunder_spirit2.narrative_marker dummy
scoreboard objectives add brown_wool.thunder_spirit2.narrative_marker2 dummy


# 雷源晶體
scoreboard objectives add brown_wool.lightning_crystal dummy "雷源晶體"
scoreboard objectives add brown_wool.lightning_crystal.overload1 dummy "超載"
scoreboard objectives add brown_wool.lightning_crystal.overload2 dummy "超載"
scoreboard objectives add brown_wool.lightning_crystal.death deathCount

# 雷禦堅甲

# 岩雷禦甲
scoreboard objectives add brown_wool.rock_thunder_armor.single_cd dummy "岩雷禦甲"
scoreboard objectives add brown_wool.rock_thunder_armor.single_random1 dummy "岩雷禦甲"
scoreboard objectives add brown_wool.rock_thunder_armor.single_random2 dummy "岩雷禦甲"
scoreboard objectives add brown_wool.rock_thunder_armor.single_random3 dummy "岩雷禦甲"
scoreboard objectives add brown_wool.rock_thunder_armor.single_random4 dummy "岩雷禦甲"
scoreboard objectives add brown_wool.rock_thunder_armor.combination_cd dummy "岩雷禦甲"
scoreboard objectives add brown_wool.rock_thunder_armor.combination_cd2 dummy "岩雷禦甲"


# 靈木霆鎧
scoreboard objectives add brown_wool.spirit_wood_thunder_armor.single_cd dummy "靈木霆鎧"
scoreboard objectives add brown_wool.spirit_wood_thunder_armor.single_random1 dummy "靈木霆鎧"
scoreboard objectives add brown_wool.spirit_wood_thunder_armor.single_random2 dummy "靈木霆鎧"
scoreboard objectives add brown_wool.spirit_wood_thunder_armor.single_random3 dummy "靈木霆鎧"
scoreboard objectives add brown_wool.spirit_wood_thunder_armor.single_random4 dummy "靈木霆鎧"
scoreboard objectives add brown_wool.spirit_wood_thunder_armor.combination_cd dummy "靈木霆鎧"
scoreboard objectives add brown_wool.spirit_wood_thunder_armor.combination_cd2 dummy "靈木霆鎧"


# 疾風刃:技能冷卻記分板
scoreboard objectives add brown_wool.gale_blade.cd dummy "疾風刃冷卻"
scoreboard objectives add brown_wool.gale_blade.cd2 dummy "疾風刃冷卻2"

# 疾風刃・改:技能冷卻記分板
scoreboard objectives add brown_wool.gale_blade_alter.cd dummy "疾風刃・改冷卻"
scoreboard objectives add brown_wool.gale_blade_alter.cd2 dummy "疾風刃・改冷卻2"
scoreboard objectives add brown_wool.gale_blade_alter1 dummy "疾風刃・改"

# 奔雷刃:技能記分板
scoreboard objectives add brown_wool.thunder_blade1 dummy "奔雷刃1"
scoreboard objectives add brown_wool.thunder_blade2 dummy "奔雷刃2"
scoreboard objectives add brown_wool.thunder_blade3 dummy "奔雷刃3"
scoreboard objectives add brown_wool.thunder_blade4 dummy "奔雷刃4"
scoreboard objectives add brown_wool.thunder_blade5 dummy "奔雷刃5"
# 奔雷刃:技能冷卻記分板
scoreboard objectives add brown_wool.thunder_blade.cd dummy "奔雷刃冷卻"
scoreboard objectives add brown_wool.thunder_blade.cd2 dummy "奔雷刃冷卻2"

# 奔雷刃・改
scoreboard objectives add brown_wool.thunder_blade_alter1 dummy "奔雷刃・改1"
scoreboard objectives add brown_wool.thunder_blade_alter2 dummy "奔雷刃・改2"
scoreboard objectives add brown_wool.thunder_blade_alter3 dummy "奔雷刃・改3"
scoreboard objectives add brown_wool.thunder_blade_alter4 dummy "奔雷刃・改4"
scoreboard objectives add brown_wool.thunder_blade_alter5 dummy "奔雷刃・改5"
scoreboard objectives add brown_wool.thunder_blade_alter6 dummy "奔雷刃・改6"
# 奔雷刃・改:技能冷卻記分板
scoreboard objectives add brown_wool.thunder_blade_alter.cd dummy "奔雷刃・改冷卻"
scoreboard objectives add brown_wool.thunder_blade_alter.cd2 dummy "奔雷刃・改冷卻2"

# 流光雷環刃:技能記分板
scoreboard objectives add brown_wool.thunder_ring_blade1 dummy "流光雷環刃1"
scoreboard objectives add brown_wool.thunder_ring_blade2 dummy "流光雷環刃2"
# 流光雷環刃:技能冷卻記分板
scoreboard objectives add brown_wool.thunder_ring_blade.cd dummy "流光雷環刃冷卻"
scoreboard objectives add brown_wool.thunder_ring_blade.cd2 dummy "流光雷環刃冷卻2"

# 雷岩破拳刃:技能記分板
scoreboard objectives add brown_wool.thunder_rock_fist_blade1 dummy "雷岩破拳刃1"
scoreboard objectives add brown_wool.thunder_rock_fist_blade2 dummy "雷岩破拳刃2"
scoreboard objectives add brown_wool.thunder_rock_fist_blade3 dummy "雷岩破拳刃3"
scoreboard objectives add brown_wool.thunder_rock_fist_blade.random dummy "雷岩破拳刃隨機"
# 雷岩破拳刃:技能冷卻記分板
scoreboard objectives add brown_wool.thunder_rock_fist_blade.cd dummy "雷岩破拳刃冷卻"
scoreboard objectives add brown_wool.thunder_rock_fist_blade.cd2 dummy "雷岩破拳刃冷卻2"

# 霆岩守心劍:技能記分板
scoreboard objectives add brown_wool.rock_guardian_sword1 dummy "霆岩守心劍1"
# 霆岩守心劍:技能冷卻記分板
scoreboard objectives add brown_wool.rock_guardian_sword.cd dummy "霆岩守心劍冷卻"
scoreboard objectives add brown_wool.rock_guardian_sword.cd2 dummy "霆岩守心劍冷卻2"

# 雷木回生劍:技能記分板
scoreboard objectives add brown_wool.thunderwood_restoration_sword1 dummy "雷木回生劍1"
# 雷木回生劍:技能冷卻記分板
scoreboard objectives add brown_wool.thunderwood_restoration_sword.cd dummy "雷木回生劍冷卻"
scoreboard objectives add brown_wool.thunderwood_restoration_sword.cd2 dummy "雷木回生劍冷卻2"

# 幻影雷刃:技能記分板
scoreboard objectives add brown_wool.phantom_lightning_blade1 dummy "幻影雷刃1"
scoreboard objectives add brown_wool.phantom_lightning_blade2 dummy "幻影雷刃2"
scoreboard objectives add brown_wool.phantom_lightning_blade.random dummy "幻影雷刃隨機"
# 幻影雷刃:技能冷卻記分板
scoreboard objectives add brown_wool.phantom_lightning_blade.cd dummy "幻影雷刃冷卻"
scoreboard objectives add brown_wool.phantom_lightning_blade.cd2 dummy "幻影雷刃冷卻2"

# 蒼霆鎮岳槍:技能記分板
scoreboard objectives add brown_wool.cangting_zhenyue_spear1 dummy "蒼霆鎮岳槍1"
scoreboard objectives add brown_wool.cangting_zhenyue_spear2 dummy "蒼霆鎮岳槍2"
scoreboard objectives add brown_wool.cangting_zhenyue_spear.random dummy "蒼霆鎮岳槍"
# 蒼霆鎮岳槍:技能冷卻記分板
scoreboard objectives add brown_wool.cangting_zhenyue_spear.cd dummy "蒼霆鎮岳槍冷卻"
scoreboard objectives add brown_wool.cangting_zhenyue_spear.cd2 dummy "蒼霆鎮岳槍冷卻2"

# 雷岩重錘:技能記分板
scoreboard objectives add brown_wool.thunder_rock_hammer1 dummy "雷岩重錘1"
# 雷岩重錘:技能冷卻記分板
scoreboard objectives add brown_wool.thunder_rock_hammer.cd dummy "雷岩重錘冷卻"
scoreboard objectives add brown_wool.thunder_rock_hammer.cd2 dummy "雷岩重錘冷卻2"

# 雷岩重錘・改:技能記分板
scoreboard objectives add brown_wool.thunder_rock_hammer_alter1 dummy "雷岩重錘・改1"
# 雷岩重錘・改:技能冷卻記分板
scoreboard objectives add brown_wool.thunder_rock_hammer_alter.cd dummy "雷岩重錘・改冷卻"
scoreboard objectives add brown_wool.thunder_rock_hammer_alter.cd2 dummy "雷岩重錘・改冷卻2"

# 雷霆漩渦:技能記分板
scoreboard objectives add brown_wool.thunder_vortex1 dummy "雷霆漩渦1"
scoreboard objectives add brown_wool.thunder_vortex2 dummy "雷霆漩渦2"

# 雷靈咒:技能記分板
scoreboard objectives add brown_wool.thunder_spirit_spell1 dummy "雷靈咒1"

# 雷氣果:技能記分板
scoreboard objectives add brown_wool.thunder_fruit dummy "雷氣果"

# 雷源精華:技能記分板
scoreboard objectives add brown_wool.thunder_source_essence dummy "雷源精華"

# 情報商人:記分板
scoreboard objectives add brown_wool.intelligence_merchant dummy "情報商人"



# 雷紋衛士:記分板
scoreboard objectives add brown_wool.thunder_guardian.time dummy "雷紋衛士發動技能的計時器"
scoreboard objectives add brown_wool.thunder_guardian.ready dummy "雷紋衛士預備狀態"
scoreboard objectives add brown_wool.thunder_guardian.cd dummy "雷紋衛士技能冷卻"
# 雷紋衛士:技能1記分板
scoreboard objectives add brown_wool.thunder_guardian.cast1 dummy "雷紋衛士技能1記分板"
# 雷紋衛士:技能2記分板
scoreboard objectives add brown_wool.thunder_guardian.cast2 dummy "雷紋衛士技能2記分板"

# 雷紋石傀
scoreboard objectives add brown_wool.thunderstone_golem.time dummy "雷紋石傀發動技能的計時器"
scoreboard objectives add brown_wool.thunderstone_golem.ready dummy "雷紋石傀預備狀態"
scoreboard objectives add brown_wool.thunderstone_golem.random dummy "雷紋石傀隨機技能"
scoreboard objectives add brown_wool.thunderstone_golem.cd dummy "雷紋石傀技能冷卻"
# 雷紋石傀:技能1記分板
scoreboard objectives add brown_wool.thunderstone_golem.cast1 dummy "雷紋石傀技能1記分板"
scoreboard objectives add brown_wool.thunderstone_golem.cast1.01 dummy "雷紋石傀技能1.01記分板"
# 雷紋石傀:技能2記分板
scoreboard objectives add brown_wool.thunderstone_golem.cast2 dummy "雷紋石傀技能2記分板"

# 電芒侍僧
scoreboard objectives add brown_wool.thunder_attendant_monk.time dummy "電芒侍僧發動技能的計時器"
scoreboard objectives add brown_wool.thunder_attendant_monk.ready dummy "電芒侍僧預備狀態"
scoreboard objectives add brown_wool.thunder_attendant_monk.random dummy "電芒侍僧隨機技能"
scoreboard objectives add brown_wool.thunder_attendant_monk.cd dummy "電芒侍僧技能冷卻"
# 電芒侍僧:技能1記分板
scoreboard objectives add brown_wool.thunder_attendant_monk.cast1 dummy "電芒侍僧技能1記分板"
scoreboard objectives add brown_wool.thunder_attendant_monk.cast1.2 dummy "電芒侍僧技能1.2記分板"
# 電芒侍僧:技能2記分板
scoreboard objectives add brown_wool.thunder_attendant_monk.cast2 dummy "電芒侍僧技能2記分板"

# 岩雷工兵:記分板
scoreboard objectives add brown_wool.mine_engineers.time dummy "岩雷工兵發動技能的計時器"
scoreboard objectives add brown_wool.mine_engineers.ready dummy "岩雷工兵預備狀態"
scoreboard objectives add brown_wool.mine_engineers.cd dummy "岩雷工兵技能冷卻"
scoreboard objectives add brown_wool.mine_engineers.random dummy "岩雷工兵隨機技能"
# 岩雷工兵:技能1記分板
scoreboard objectives add brown_wool.mine_engineers.cast1 dummy "岩雷工兵技能1記分板"
scoreboard objectives add brown_wool.mine_engineers.cast2 dummy "岩雷工兵技能2記分板"

# 霆紋侍祭:記分板
scoreboard objectives add brown_wool.thunder_patterned_priest.time dummy "霆紋侍祭發動技能的計時器"
scoreboard objectives add brown_wool.thunder_patterned_priest.ready dummy "霆紋侍祭預備狀態"
scoreboard objectives add brown_wool.thunder_patterned_priest.cd dummy "霆紋侍祭技能冷卻"
scoreboard objectives add brown_wool.thunder_patterned_priest.random dummy "霆紋侍祭隨機技能"
# 霆紋侍祭:技能1記分板
scoreboard objectives add brown_wool.thunder_patterned_priest.cast1 dummy "霆紋侍祭技能1記分板"
scoreboard objectives add brown_wool.thunder_patterned_priest.cast1.2 dummy "霆紋侍祭技能1記分板"
scoreboard objectives add brown_wool.thunder_patterned_priest.cast2 dummy "霆紋侍祭技能2記分板"

# 雷影巡衛:記分板
scoreboard objectives add brown_wool.shadow_guard.time dummy "雷影巡衛發動技能的計時器"
scoreboard objectives add brown_wool.shadow_guard.ready dummy "雷影巡衛預備狀態"
scoreboard objectives add brown_wool.shadow_guard.cd dummy "雷影巡衛技能冷卻"
scoreboard objectives add brown_wool.shadow_guard.random dummy "雷影巡衛隨機技能"
# 雷影巡衛:技能1記分板
scoreboard objectives add brown_wool.shadow_guard.cast1 dummy "雷影巡衛技能1記分板"
scoreboard objectives add brown_wool.shadow_guard.cast1_random dummy "雷影巡衛技能1記分板"
# 雷影巡衛:技能2記分板
scoreboard objectives add brown_wool.shadow_guard.cast2 dummy "雷影巡衛技能2記分板"
scoreboard objectives add brown_wool.shadow_guard.cast2_random dummy "雷影巡衛技能2記分板"

# 雙劍雷影衛
scoreboard objectives add brown_wool.thunder_shadow_guard.kill dummy "雙劍雷影衛"
scoreboard objectives add brown_wool.thunder_shadow_guard.playsound dummy "雙劍雷影衛"
scoreboard objectives add brown_wool.thunder_shadow_guard.end dummy "雙劍雷影衛"
scoreboard objectives add brown_wool.thunder_shadow_guard.switch dummy "雙劍雷影衛"
scoreboard objectives add brown_wool.thunder_shadow_guard.health dummy "雙劍雷影衛"
scoreboard objectives add brown_wool.thunder_shadow_guard.pg dummy "雙劍雷影衛發動技能的計時器"
scoreboard objectives add brown_wool.thunder_shadow_guard.pg2 dummy "雙劍雷影衛發動技能的計時器"
scoreboard objectives add brown_wool.thunder_shadow_guard.pg_random dummy "雙劍雷影衛發動技能的計時器"
scoreboard objectives add brown_wool.thunder_shadow_guard.pg_cd dummy "雙劍雷影衛發動技能的計時器"
scoreboard objectives add brown_wool.thunder_shadow_guard.cast dummy "雙劍雷影衛發動技能的計時器"
scoreboard objectives add brown_wool.thunder_shadow_guard.skill dummy "雙劍雷影衛發動技能的計時器"
scoreboard objectives add brown_wool.thunder_shadow_guard.time dummy "雙劍雷影衛發動技能的計時器"
scoreboard objectives add brown_wool.thunder_shadow_guard.skill_time dummy "雙劍雷影衛發動技能的計時器"
scoreboard objectives add brown_wool.thunder_shadow_guard.random dummy "雙劍雷影衛發動技能的計時器"
scoreboard objectives add brown_wool.thunder_shadow_guard.skill_random dummy "雙劍雷影衛發動技能的計時器"
scoreboard objectives add brown_wool.thunder_shadow_guard.cd dummy "雙劍雷影衛發動技能的計時器"
scoreboard objectives add brown_wool.thunder_shadow_guard.skill_cd dummy "雙劍雷影衛發動技能的計時器"
scoreboard objectives add brown_wool.thunder_shadow_guard.move dummy "雙劍雷影衛"
scoreboard objectives add brown_wool.thunder_shadow_guard.move2 dummy "雙劍雷影衛"
scoreboard objectives add brown_wool.thunder_shadow_guard.move_random dummy "雙劍雷影衛"
# 雙劍雷影衛:技能記分板
scoreboard objectives add brown_wool.thunder_shadow_guard.cast1 dummy "雙劍雷影衛技能1記分板"
scoreboard objectives add brown_wool.thunder_shadow_guard.cast3 dummy "雙劍雷影衛技能3記分板"
scoreboard objectives add brown_wool.thunder_shadow_guard.cast4 dummy "雙劍雷影衛技能4記分板"
scoreboard objectives add brown_wool.thunder_shadow_guard.cast5 dummy "雙劍雷影衛技能5記分板"
# 雙劍雷影衛:技能記分板
scoreboard objectives add brown_wool.thunder_shadow_guard.skill1 dummy "雙劍雷影衛技能1記分板"
scoreboard objectives add brown_wool.thunder_shadow_guard.skill2 dummy "雙劍雷影衛技能2記分板"
scoreboard objectives add brown_wool.thunder_shadow_guard.skill3 dummy "雙劍雷影衛技能3記分板"
scoreboard objectives add brown_wool.thunder_shadow_guard.skill4 dummy "雙劍雷影衛技能4記分板"
scoreboard objectives add brown_wool.thunder_shadow_guard.skill5 dummy "雙劍雷影衛技能5記分板"
# 雙劍雷影衛:
bossbar add brown_wool.thunder_shadow_guard {translate:"entity.brown_wool.thunder_shadow_guard"} 
bossbar set brown_wool.thunder_shadow_guard color purple
bossbar set brown_wool.thunder_shadow_guard max 400

# 玄霆祭司
scoreboard objectives add brown_wool.xuan_ting_priest.playsound dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.kill dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.end dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.switch dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.move dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.move0.0 dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.move2 dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.move_random dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.health dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.as_pg dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.pg dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.pg2 dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.pg_random dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.pg_cd dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.random dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.time dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.cast dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.cd dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.skill_time dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.skill_random dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.skill dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.skill_cd dummy "玄霆祭司"
# 玄霆祭司:技能記分板
scoreboard objectives add brown_wool.xuan_ting_priest.cast1 dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.cast2 dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.cast3 dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.cast4 dummy "玄霆祭司"
scoreboard objectives add brown_wool.xuan_ting_priest.cast5 dummy "玄霆祭司"
# 玄霆祭司:技能記分板
scoreboard objectives add brown_wool.xuan_ting_priest.skill1 dummy "玄霆祭司技能1記分板"
scoreboard objectives add brown_wool.xuan_ting_priest.skill2.1 dummy "玄霆祭司技能2記分板"
scoreboard objectives add brown_wool.xuan_ting_priest.skill2_random dummy "玄霆祭司技能2記分板"
scoreboard objectives add brown_wool.xuan_ting_priest.skill2.2 dummy "玄霆祭司技能2記分板"
scoreboard objectives add brown_wool.xuan_ting_priest.skill3 dummy "玄霆祭司技能3記分板"
# 玄霆祭司:
bossbar add brown_wool.xuan_ting_priest {translate:"entity.brown_wool.xuan_ting_priest"} 
bossbar set brown_wool.xuan_ting_priest color pink
bossbar set brown_wool.xuan_ting_priest max 350

# 霆岩鎮衛
scoreboard objectives add brown_wool.thunder_rock_guard.playsound dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.kill dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.switch dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.end dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.health dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.move dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.move2 dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.move_random dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.pg dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.pg2 dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.pg_random dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.pg_cd dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.random dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.time dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.cast dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.cd dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.skill_time dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.skill_random dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.skill dummy "玄霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.skill_cd dummy "霆岩鎮衛"
# 霆岩鎮衛:技能記分板
scoreboard objectives add brown_wool.thunder_rock_guard.cast1 dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.cast2.1 dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.cast2.2 dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.cast2_random dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.cast3 dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.cast4 dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.cast5 dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.cast5_random dummy "霆岩鎮衛"
# 霆岩鎮衛:技能記分板
scoreboard objectives add brown_wool.thunder_rock_guard.skill1.1 dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.skill1.2 dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.skill1_random dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.skill2 dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.skill2_random dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.skill3.1 dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.skill3.2 dummy "霆岩鎮衛"
scoreboard objectives add brown_wool.thunder_rock_guard.skill3_random dummy "霆岩鎮衛"
# 霆岩鎮衛
bossbar add brown_wool.thunder_rock_guard {translate:"entity.brown_wool.thunder_rock_guard"} 
bossbar set brown_wool.thunder_rock_guard color yellow
bossbar set brown_wool.thunder_rock_guard max 450

# 蒼霆鎮域大將軍
scoreboard objectives add brown_wool.cangting_general.playsound dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.kill dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.switch dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.end dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.health dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.move dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.move2 dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.move_random dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.pg dummy "蒼霆鎮域大將軍發動技能的計時器"
scoreboard objectives add brown_wool.cangting_general.pg2 dummy "蒼霆鎮域大將軍發動技能的計時器"
scoreboard objectives add brown_wool.cangting_general.pg_random dummy "蒼霆鎮域大將軍發動技能的計時器"
scoreboard objectives add brown_wool.cangting_general.pg_cd dummy "蒼霆鎮域大將軍發動技能的計時器"
scoreboard objectives add brown_wool.cangting_general.random dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.time dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.cast dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.cd dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.skill_time dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.skill_random dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.skill dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.skill_cd dummy "蒼霆鎮域大將軍"
# 蒼霆鎮域大將軍:技能記分板
scoreboard objectives add brown_wool.cangting_general.cast1 dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.cast2 dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.cast2.2 dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.cast2.3 dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.cast2_random dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.cast4 dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.cast5 dummy "蒼霆鎮域大將軍"
# 蒼霆鎮域大將軍:技能記分板
scoreboard objectives add brown_wool.cangting_general.skill1 dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.skill2 dummy "蒼霆鎮域大將軍"
scoreboard objectives add brown_wool.cangting_general.skill3 dummy "蒼霆鎮域大將軍"
# 蒼霆鎮域大將軍:
bossbar add brown_wool.cangting_general {translate:"entity.brown_wool.cangting_general"} 
bossbar set brown_wool.cangting_general color pink
bossbar set brown_wool.cangting_general max 400


# 雷煞・裂獠
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.playsound dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.playsound2 dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.kill dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.end dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.switch dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.health dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.move dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.move2 dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.move_random dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.pg dummy "雷煞・裂獠發動技能的計時器"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.pg2 dummy "雷煞・裂獠發動技能的計時器"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.pg_random dummy "雷煞・裂獠發動技能的計時器"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.pg_cd dummy "雷煞・裂獠發動技能的計時器"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.random dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.time dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.cast dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.cd dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.fire_random dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.fire_time dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.fire dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.fire_cd dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.skill_time dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.skill_random dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.skill dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang.skill_cd dummy "雷煞・裂獠"
# 雷煞・裂獠:技能記分板
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang_2.fire0 dummy "雷煞・裂獠"
# 雷煞・裂獠:技能記分板
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang_1.cast1 dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang_1.cast3 dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang_1.cast5 dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang_2.cast1 dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang_2.cast2 dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang_2.cast2_random dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang_2.cast3 dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang_2.cast3.1 dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang_2.cast3.2 dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang_2.cast4 dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang_2.cast5 dummy "雷煞・裂獠"
# 雷煞・裂獠:技能記分板
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang_2.skill1.0 dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang_2.skill1.1 dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang_2.skill2 dummy "雷煞・裂獠"
scoreboard objectives add brown_wool.thunderous_fiend_rift_fang_2.skill3 dummy "雷煞・裂獠"
# 雷煞・裂獠:
bossbar add brown_wool.thunderous_fiend_rift_fang_1 {translate:"entity.brown_wool.thunderous_fiend_rift_fang"} 
bossbar set brown_wool.thunderous_fiend_rift_fang_1 color blue
bossbar set brown_wool.thunderous_fiend_rift_fang_1 max 400
bossbar add brown_wool.thunderous_fiend_rift_fang_2 {translate:"entity.brown_wool.thunderous_fiend_rift_fang"} 
bossbar set brown_wool.thunderous_fiend_rift_fang_2 color red
bossbar set brown_wool.thunderous_fiend_rift_fang_2 max 400



# 雷靈:
scoreboard objectives add brown_wool.thunder_spirit.playsound dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.playsound2 dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.kill dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.end dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.brown_wool dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.health1 dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.health2 dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.move dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.move2 dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.move_random dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.pg dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.pg2 dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.pg_random dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.pg_cd dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.as_pg dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.random dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.time dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.cast dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.cd dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.skill_time dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.skill_random dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.skill dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.skill_cd dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.switch dummy "雷靈"
# 雷靈:技能記分板
scoreboard objectives add brown_wool.thunder_spirit.call1 dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.call_random dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.attack1 dummy "雷靈"
# 雷靈:技能記分板
scoreboard objectives add brown_wool.thunder_spirit.cast1 dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.cast2 dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.cast3 dummy "雷靈"
# 雷靈:技能記分板
scoreboard objectives add brown_wool.thunder_spirit.skill1 dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.skill2.1 dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.skill2.2 dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.skill2.3 dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.skill2_random dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.skill3.1 dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.skill3.2 dummy "雷靈"
scoreboard objectives add brown_wool.thunder_spirit.skill3_random dummy "雷靈"
# 雷靈:
bossbar add brown_wool.thunder_spirit {translate:"entity.brown_wool.thunder_spirit"} 
bossbar set brown_wool.thunder_spirit color blue
bossbar set brown_wool.thunder_spirit max 30
bossbar add brown_wool.thunder_spirit2 {translate:"entity.brown_wool.thunder_spirit"} 
bossbar set brown_wool.thunder_spirit2 color blue
bossbar set brown_wool.thunder_spirit2 max 35


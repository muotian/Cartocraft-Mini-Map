# 執行者：無
# 執行位置：世界重生點

# 這是 load 函數，每當進入世界時，或是打 /reload 指令時都會執行一次。
# 很適合用來建立記分板，或是其它只需要執行一次的事情。

#say 載入成功

scoreboard objectives add green_wool.mobskill dummy
scoreboard objectives add green_wool.mobskill2 dummy
# 記分板
scoreboard objectives add green_wool.object_duration dummy
scoreboard objectives add green_wool.mob.health dummy
scoreboard objectives add green_wool.device_number dummy
scoreboard objectives add green_wool.device_detect dummy
scoreboard objectives add green_wool.device_boom_time dummy
scoreboard objectives add green_wool.washing_machine-AJ dummy
scoreboard objectives add green_wool.pipe_skill dummy
scoreboard objectives add green_wool.boltgun_number dummy
scoreboard objectives add green_wool.boltgun_bullet dummy
scoreboard objectives add green_wool.boltgun_reloed dummy
scoreboard objectives add green_wool.steam_sworld_skill1 dummy
scoreboard objectives add green_wool.steam_sworld_skill2 dummy
scoreboard objectives add green_wool.steam_sworld_skill_time dummy
scoreboard objectives add green_wool.steam_sworld_damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add green_wool.boltgun_bullet1 dummy
scoreboard objectives add green_wool.steam_robot_hand dummy
scoreboard objectives add green_wool.steam_robot_hand2 dummy
scoreboard objectives add green_wool.chain_sword_energy_bar dummy
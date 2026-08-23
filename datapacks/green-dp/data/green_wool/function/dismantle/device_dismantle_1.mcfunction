#每tick run 1次
execute on target if items entity @s weapon.mainhand *[custom_data={green_wool.spanner:1b}] run tag @s add green_wool.dismantle_man
execute if entity @n[tag=green_wool.dismantle_man] store result score @s green_wool.device_detect run data get entity @s interaction.timestamp
execute if entity @n[tag=green_wool.dismantle_man] if entity @s[scores={green_wool.device_detect=1..}] run particle minecraft:explosion_emitter
#測試電器:tag=green_wool.test_device
execute if entity @n[type=!interaction,tag=green_wool.test_device] on target if items entity @s weapon.mainhand *[custom_data={green_wool.spanner:1b}] run give @s minecraft:iron_ingot
execute if entity @n[type=!interaction,tag=green_wool.test_device] on target if items entity @s weapon.offhand *[custom_data={green_wool.spanner:1b}] run give @s minecraft:iron_ingot
#蒸氣官家:tag=green_wool.steam_robot
execute if entity @n[type=!interaction,tag=green_wool.steam_robot] on target if items entity @s weapon.mainhand *[custom_data={green_wool.spanner:1b}] run function green_wool:steam_robot_hand/give_steam_robot_hand
execute if entity @n[type=!interaction,tag=green_wool.steam_robot] on target if items entity @s weapon.offhand *[custom_data={green_wool.spanner:1b}] run function green_wool:steam_robot_hand/give_steam_robot_hand
#機械門衛:tag=green_wool.security
execute if entity @n[type=!interaction,tag=green_wool.security] on target if items entity @s weapon.mainhand *[custom_data={green_wool.spanner:1b}] run give @s minecraft:iron_ingot[custom_data={green_wool.iron_ingot:1b}] 2
execute if entity @n[type=!interaction,tag=green_wool.security] on target if items entity @s weapon.offhand *[custom_data={green_wool.spanner:1b}] run give @s minecraft:iron_ingot[custom_data={green_wool.iron_ingot:1b}] 2
#洗衣機:tag=green_wool.washing_machine
execute if entity @n[type=!interaction,tag=green_wool.washing_machine] on target if items entity @s weapon.mainhand *[custom_data={green_wool.spanner:1b}] run give @s wind_charge 1
execute if entity @n[type=!interaction,tag=green_wool.washing_machine] on target if items entity @s weapon.offhand *[custom_data={green_wool.spanner:1b}] run give @s wind_charge 1
execute if entity @n[type=!interaction,tag=green_wool.washing_machine] on target if items entity @s weapon.offhand *[custom_data={green_wool.spanner:1b}] run give @s minecraft:iron_ingot[custom_data={green_wool.iron_ingot:1b}] 2
execute if entity @n[type=!interaction,tag=green_wool.washing_machine] on target if items entity @s weapon.mainhand *[custom_data={green_wool.spanner:1b}] run give @s minecraft:iron_ingot[custom_data={green_wool.iron_ingot:1b}] 2



execute if entity @n[tag=green_wool.dismantle_man] if entity @s[scores={green_wool.device_detect=1..}] run tag @s add green_wool.dismantle_1_remove

execute if entity @s[scores={green_wool.device_detect=1..},tag=green_wool.dismantle_1_remove] run kill @n[tag=green_wool.dismantle_2]
execute if entity @s[scores={green_wool.device_detect=1..},tag=green_wool.dismantle_1_remove] run kill @e[tag=green_wool.washing_machine-AJ,distance=..0.5]
execute if entity @s[scores={green_wool.device_detect=1..},tag=green_wool.dismantle_1_remove] run tag @n[tag=green_wool.dismantle_man] remove green_wool.dismantle_man
execute if entity @s[scores={green_wool.device_detect=1..},tag=green_wool.dismantle_1_remove] run kill @n[tag=green_wool.broken]
scoreboard players reset @s green_wool.device_detect
data remove entity @s interaction.player
kill @s[tag=green_wool.dismantle_1_remove]
# 執行者：無
# 執行位置：世界重生點

# 這是 tick 函數，每秒會執行 20 次。
# 很適合用於持續偵測

#技能倒數


# 範例道具

# 把過期的物件刪掉
scoreboard players remove @e[tag=green_wool.object, scores={green_wool.object_duration=1..}] green_wool.object_duration 1
kill @e[tag=green_wool.object, scores={green_wool.object_duration=..0}]


execute as @e[tag=green_wool.device] at @s run function green_wool:dismantle/device
#function green_wool:bat
function green_wool:washing_machine/washing_machine
execute as @a[tag=green_wool.pipe_skill] at @s run function green_wool:pipe/pipe_skill
function green_wool:pipe/pipe_skill2
execute as @a if items entity @s weapon.mainhand *[minecraft:custom_data={green_wool.steam_sword:1b}] at @s run function green_wool:steam_sword/steam_sword
execute as @a if items entity @s weapon.offhand *[minecraft:custom_data={green_wool.steam_sword:1b}] at @s run function green_wool:steam_sword/steam_sword
execute as @a[tag=green_wool.steam_sword_skill_player] at @s run function green_wool:steam_sword/steam_sword_skill3
execute as @e[tag=green_wool.security] at @s run function green_wool:security/security
execute as @e[tag=green_wool.steam_robot] at @s run function green_wool:steam_robot/steam_robot
execute as @a[tag=green_wool.steam_robot_hand] at @s run function green_wool:steam_robot_hand/steam_robot_hand2
function green_wool:heavy_armour/full_armour
function green_wool:gladius/gladius_energy
function green_wool:crafting/heavy_armour_upgrape/craft_detect
function green_wool:40k_chain_sword/energy_bar
function green_wool:leather/leather
function green_wool:string/string
execute as @e[tag=green_wool.washing_machine_spawner] at @s run function green_wool:washing_machine/washing_machine_spawner
execute as @e[type=item] at @s if block ~ ~-0.3 ~ smithing_table run function green_wool:craft/craft
execute as @e[tag=green_wool.craft] at @s run function green_wool:craft/craft2
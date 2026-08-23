execute if entity @s[scores={green_wool.steam_robot_hand2=1}] run function green_wool:steam_robot_hand/steam_robot_hand_shoot
scoreboard players add @s green_wool.steam_robot_hand2 1
execute if entity @s[scores={green_wool.steam_robot_hand=0}] run scoreboard players set @s green_wool.steam_robot_hand2 0
scoreboard players set @s green_wool.steam_robot_hand 0

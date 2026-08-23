execute if entity @p[distance=..3.5] run scoreboard players add @s green_wool.mobskill 1
execute if entity @s[scores={green_wool.mobskill=30..}] run function green_wool:steam_robot/steam_robot_skill
scoreboard players add @s green_wool.mobskill2 1
execute if entity @s[scores={green_wool.mobskill2=1..10}] run data merge entity @s {NoAI:1b}
execute if entity @s[scores={green_wool.mobskill2=11}] run function green_wool:steam_robot/steam_robot_skill2
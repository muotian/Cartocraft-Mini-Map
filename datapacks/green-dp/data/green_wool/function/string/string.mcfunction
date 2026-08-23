scoreboard players add @e[tag=green_wool.string] green_wool.mobskill 1
execute as @e[tag=green_wool.string,scores={green_wool.mobskill=100..}] at @s run effect give @e[tag=green_wool.leather,distance=..30] instant_damage 1 1
scoreboard players reset @e[tag=green_wool.string,scores={green_wool.mobskill=100..}] green_wool.mobskill
execute as @e[tag=green_wool.string] at @s if entity @e[tag=green_wool.leather,scores={green_wool.mobskill=1..5}] run attribute @s movement_speed base set 0.3
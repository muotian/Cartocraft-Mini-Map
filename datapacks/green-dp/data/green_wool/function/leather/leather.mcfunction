execute as @e[tag=green_wool.leather] at @s store result score @s green_wool.mobskill if entity @e[tag=green_wool.leather,distance=1..10]

execute as @e[tag=green_wool.leather,scores={green_wool.mobskill=1..5}] run attribute @s max_health base set 20
execute as @e[tag=green_wool.leather,scores={green_wool.mobskill=6..10}] run attribute @s max_health base set 30
execute as @e[tag=green_wool.leather,scores={green_wool.mobskill=11..15}] run attribute @s max_health base set 40
execute as @e[tag=green_wool.leather,scores={green_wool.mobskill=16..20}] run attribute @s max_health base set 50
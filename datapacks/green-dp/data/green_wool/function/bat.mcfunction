execute at @e[tag=green_wool.bat] run particle minecraft:cloud ~ ~0.4 ~
scoreboard players add @e[tag=green_wool.bat] green_wool.mobskill 1
execute as @e[tag=green_wool.bat,scores={green_wool.mobskill=200..}] at @s run tp @p
execute as @e[tag=green_wool.bat,scores={green_wool.mobskill=200..}] at @s run damage @p 8 minecraft:on_fire by @e[tag=green_wool.bat,limit=1]
execute as @e[tag=green_wool.bat,scores={green_wool.mobskill=201}] run scoreboard players set @s green_wool.mobskill 0
effect give @s strength 23 1 false
effect give @s jump_boost 23 0 false
execute as @e[type=#minecraft:hostile,distance=..8] at @s run function black:item/head/real_attack
playsound minecraft:entity.player.levelup block @s ~ ~ ~ 1 2
playsound black:ring block @s ~ ~ ~ 1 1.25
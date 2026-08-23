effect give @s speed 1 4 false
effect give @s resistance 1 3 false
execute as @e[type=#minecraft:hostile,distance=..8] at @s run function black:item/head/real_attack
playsound minecraft:entity.player.levelup block @s ~ ~ ~ 1 2
playsound black:ring block @s ~ ~ ~ 1 1.75
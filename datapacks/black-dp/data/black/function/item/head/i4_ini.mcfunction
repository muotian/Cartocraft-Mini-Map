effect give @s regeneration 99 1 false
effect give @s absorption 99 4 false
execute as @e[type=#minecraft:hostile,distance=..8] at @s run function black:item/head/fake_attack
playsound minecraft:entity.player.levelup block @s ~ ~ ~ 1 2
playsound black:ring block @s ~ ~ ~ 1 2
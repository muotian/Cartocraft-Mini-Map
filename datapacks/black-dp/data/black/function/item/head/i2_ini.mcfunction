effect give @s saturation 1 1 false
execute as @e[type=#minecraft:hostile,distance=..8] at @s run function black:item/head/fake_attack
playsound minecraft:entity.player.levelup block @s ~ ~ ~ 1 2
playsound black:ring block @s ~ ~ ~ 1 1.5
particle minecraft:explosion
particle minecraft:flame ~ ~ ~ 0 0 0 0.133 100 force
particle minecraft:large_smoke ~ ~0.1 ~ 0 0 0 0.2 20 force
playsound minecraft:entity.generic.explode block @a[distance=..8] ~ ~ ~ 2 2
execute as @a[distance=..2] run damage @s 36 black:cd_sc by @n[tag=black.elite2]
kill @s
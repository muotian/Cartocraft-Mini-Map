playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1 1
particle explosion_emitter ~ ~ ~
execute as @a[distance=..5] run damage @s 40 explosion
kill @e[tag=green_wool.washing_machine-AJ,distance=..0.5]
kill @n[tag=green_wool.dismantle_1]
kill @n[tag=green_wool.dismantle_2]
kill @n[tag=green_wool.broken]
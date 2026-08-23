effect give @e[tag=black.mobs,distance=..8] absorption infinite 10 false

execute positioned ~ ~1 ~ rotated ~ 0 run function black:bossfight/boss1/skill4/explode_particle {particle:flame,speed:0.000008}


playsound minecraft:item.honey_bottle.drink block @a[distance=..10] ~ ~ ~ 2 1
playsound minecraft:block.enchantment_table.use block @a[distance=..10] ~ ~ ~ 1 2
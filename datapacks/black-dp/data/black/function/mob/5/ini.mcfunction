effect give @e[type=#minecraft:hostile,distance=..8] strength 30 4 false
effect give @e[type=#minecraft:hostile,distance=..8] speed 30 2 false

execute positioned ~ ~1 ~ rotated ~ 0 run function black:bossfight/boss1/skill4/explode_particle {particle:flame,speed:0.000008}
execute positioned ~ ~0.8 ~ rotated ~ 0 run function black:bossfight/boss1/skill4/explode_particle {particle:poof,speed:0.0000085}

playsound minecraft:entity.ravager.roar block @a[distance=..10] ~ ~ ~ 2 1.1
playsound minecraft:item.trident.riptide_3 block @a[distance=..10] ~ ~ ~ 2 1.3


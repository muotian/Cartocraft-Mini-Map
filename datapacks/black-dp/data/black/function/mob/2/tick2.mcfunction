scoreboard players add @s icebird.core 1
playsound minecraft:entity.creeper.primed block @a[distance=..10] ~ ~ ~ 1 2
particle minecraft:smoke ~ ~0.2 ~ 0 0 0 0.07 20 force
execute if score @s icebird.core matches 25 run function black:mob/2/explode

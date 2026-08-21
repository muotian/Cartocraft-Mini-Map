
execute store result score @s white.mob.cd run random value 120..160
function white:sys/mob/charge/clear
tag @s remove white.mob.third_composer.1

# fx
playsound minecraft:weather.rain master @a ~ ~ ~ 1 1
playsound minecraft:weather.rain master @a ~ ~ ~ 1 1
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.2 1
particle minecraft:large_smoke ~ ~1 ~ 0.3 0.6 0.3 0.1 30 force
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.6 0.3 0 10 force
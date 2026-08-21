
summon marker ^ ^-.5 ^ {Tags:["mini_light.elite_poison_zombie_skill","new"]}


scoreboard players set @e[tag=mini_light.elite_poison_zombie_skill,tag=new] mini_light.monster_duration 12
execute as @e[tag=mini_light.elite_poison_zombie_skill,tag=new] at @s rotated as @n[tag=mini_light.elite_poison_zombie] run rotate @s ~-50 ~

particle angry_villager ~ ~ ~ .2 .2 .2 0 10


tag @e[tag=mini_light.elite_poison_zombie_skill] remove new

playsound minecraft:entity.wither.shoot master @a[distance=..10] ~ ~ ~ 10 1
playsound minecraft:entity.phantom.bite master @a[distance=..10] ~ ~ ~ 10 1
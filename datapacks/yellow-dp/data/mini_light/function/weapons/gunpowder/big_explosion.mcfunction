particle explosion ~ ~ ~ .3 .3 .3 0 5
particle dust{color:[0.5,0.5,0.5],scale:1} ~ ~ ~ .6 .6 .6 0 70
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.3 1.7
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.3 1.7
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.3 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.3 0.5
playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 0.3 2
execute anchored eyes run function mini_light:weapons/gunpowder/particle

tag @s add this
execute positioned ~-1 ~-1 ~-1 as @e[type=#mini_light:mobs,type=!player,dx=1,dy=1,dz=1] run damage @s 18 explosion by @p[tag=this]
execute positioned ~-1 ~-1 ~-1 as @e[type=#mini_light:mobs,dx=1,dy=1,dz=1] run data modify entity @s Motion[1] set value 0.7d
tag @s remove this




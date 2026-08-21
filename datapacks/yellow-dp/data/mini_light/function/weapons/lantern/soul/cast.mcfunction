playsound minecraft:entity.warden.hurt player @a ~ ~ ~ 1 1.3
playsound minecraft:entity.vex.ambient player @s ~ ~ ~ 1 1
playsound minecraft:entity.phantom.death player @s ~ ~ ~ 0.5 0.5

execute store result score @s mini_light.soul.schedule run time query gametime
scoreboard players add @s mini_light.soul.schedule 4

tag @e[type=#mini_light:monster,type=!player,distance=..20,tag=!boss] add mini_light.soul_tag
tag @e[type=#mini_light:monster,type=!player,distance=..20,tag=!boss] add mini_light.soul_modifier
execute as @e[type=#mini_light:monster,tag=mini_light.soul_modifier] run attribute @s follow_range modifier add soul_lantern -1 add_multiplied_total

schedule function mini_light:weapons/lantern/soul/remove_modifier 4t append
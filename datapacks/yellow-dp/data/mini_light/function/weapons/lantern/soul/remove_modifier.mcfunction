execute store result score $gametime mini_light.soul.schedule run time query gametime
execute as @a if score @s mini_light.soul.schedule = $gametime mini_light.soul.schedule run function mini_light:weapons/lantern/soul/calculate_damage

execute as @e[type=#mini_light:mobs,tag=mini_light.soul_modifier] run attribute @s follow_range modifier remove soul_lantern
tag @e[type=#mini_light:mobs,tag=mini_light.soul_modifier] remove mini_light.soul_modifier

tag @e[tag=mini_light.soul_tag,limit=1,sort=random] add mini_light.soul_previous
execute as @e[tag=mini_light.soul_tag,tag=!mini_light.soul_previous,sort=random,limit=1] at @s run function mini_light:weapons/lantern/soul/iteration
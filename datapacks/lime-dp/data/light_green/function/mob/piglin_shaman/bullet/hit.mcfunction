execute at @s as @e[type=!#light_green:no_hp,dx=0] unless score @s light_green.team matches 1 run tag @s add light_green.damage_target

execute at @s as @e[type=!#light_green:no_hp,dx=0] if score @s light_green.team matches 1 run tag @s add light_green.support_target

function light_green:mob/piglin_shaman/bullet/type/convert

execute as @e[tag=light_green.support_target,distance=..10] run tag @s remove light_green.support_target
execute as @e[tag=light_green.damage_target,distance=..10] run tag @s remove light_green.damage_target
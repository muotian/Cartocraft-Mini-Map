execute at @s as @e[type=!#light_green:no_hp,dx=0] run tag @s add light_green.damage_target


function light_green:item/golem/mod/adapt/bullet/type/convert

execute as @e[tag=light_green.damage_target,distance=..10] run tag @s remove light_green.damage_target
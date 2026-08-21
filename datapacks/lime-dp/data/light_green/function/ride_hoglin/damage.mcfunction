tag @s add light_green.attacker
execute at @s positioned ~-1 ~ ~-1 as @e[type=!#light_green:no_hp,type=!player,dx=1,dz=1,tag=!light_green.attacker] run tag @s add light_green.damage_target
execute as @e[tag=light_green.damage_target] run damage @s 5 light_green:rush by @e[tag=light_green.attacker,limit=1]
execute as @e[tag=light_green.damage_target] run function light_green:ride_hoglin/knockback
tag @s remove light_green.attacker
tag @e[tag=light_green.damage_target] remove light_green.damage_target
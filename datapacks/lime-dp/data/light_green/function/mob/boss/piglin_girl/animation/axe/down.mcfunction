item replace entity @s weapon.mainhand with iron_axe[enchantments={efficiency:5}]
tag @s add light_green.attacker
execute rotated ~ 0 positioned ^ ^ ^0.5 positioned ~-2 ~-2 ~-2 as @e[dx=3,dy=3,dz=3,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.damage_target
execute as @e[tag=light_green.damage_target] run damage @s 10 light_green:axe by @e[tag=light_green.boss.piglin_girl,limit=1,type=piglin_brute]
execute as @e[tag=light_green.damage_target] run function light_green:mob/boss/piglin_girl/animation/add_weapon_time
execute as @e[tag=light_green.damage_target] run function light_green:mob/boss/piglin_girl/animation/axe/add_break_defance
execute as @e[tag=light_green.damage_target] run tag @s remove light_green.damage_target
tag @s remove light_green.attacker
item replace entity @s weapon.mainhand with air
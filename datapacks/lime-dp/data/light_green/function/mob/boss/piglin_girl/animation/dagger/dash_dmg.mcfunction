tag @s add light_green.attacker
execute rotated ~ 0 positioned ^ ^ ^0.75 positioned ~-1.25 ~-1.25 ~-1.25 as @e[dx=1.5,dy=1.5,dz=1.5,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.damage_target
execute as @e[tag=light_green.damage_target] run damage @s 3 light_green:dagger_dash by @e[tag=light_green.boss.piglin_girl,limit=1,type=piglin_brute]
execute as @e[tag=light_green.damage_target] run function light_green:mob/boss/piglin_girl/animation/add_weapon_time
execute if entity @n[tag=light_green.damage_target] run scoreboard players add $piglin_girl_dagger_hit light_green.main.math 1
execute if score $piglin_girl_level light_green.main.math matches 2 as @e[tag=light_green.damage_target] run function light_green:mob/boss/piglin_girl/animation/dagger/add_agony
execute as @e[tag=light_green.damage_target] run tag @s remove light_green.damage_target
tag @s remove light_green.attacker
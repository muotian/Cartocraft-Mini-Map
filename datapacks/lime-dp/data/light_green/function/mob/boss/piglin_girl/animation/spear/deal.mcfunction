item replace entity @s weapon.mainhand with iron_axe[enchantments={efficiency:5}]
tag @s add light_green.attacker
execute rotated ~ 0 positioned ^ ^ ^0.25 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.damage_target
execute rotated ~ 0 positioned ^ ^ ^0.75 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.damage_target
execute rotated ~ 0 positioned ^ ^ ^1.25 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.damage_target
execute rotated ~ 0 positioned ^ ^ ^1.75 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.damage_target
execute rotated ~ 0 positioned ^ ^ ^2.25 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.damage_target
execute rotated ~ 0 positioned ^ ^ ^2.75 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.damage_target
execute rotated ~ 0 positioned ^ ^ ^3.25 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.damage_target
execute rotated ~ 0 positioned ^ ^ ^3.75 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.damage_target
execute rotated ~ 0 positioned ^ ^ ^4.25 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.damage_target
execute rotated ~ 0 positioned ^ ^ ^4.75 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=!#light_green:no_hp,tag=!light_green.attacker] unless score @s light_green.team matches 1 run tag @s add light_green.damage_target
execute as @e[tag=light_green.damage_target] run damage @s 10 light_green:spear by @e[tag=light_green.boss.piglin_girl,limit=1,type=piglin_brute]
execute as @e[tag=light_green.damage_target] run function light_green:mob/boss/piglin_girl/animation/add_weapon_time
execute as @e[tag=light_green.damage_target] run tag @s remove light_green.damage_target
tag @s remove light_green.attacker
item replace entity @s weapon.mainhand with air
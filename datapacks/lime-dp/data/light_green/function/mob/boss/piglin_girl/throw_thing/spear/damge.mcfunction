item replace entity @n[tag=light_green.boss.piglin_girl] weapon.mainhand with iron_axe[enchantments={efficiency:5}]
execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#light_green:no_hp,tag=!light_green.boss.piglin_girl] unless score @s light_green.team matches 1 run tag @s add light_green.damage_target
execute if entity @n[tag=light_green.damage_target] run tag @s add light_green.hit
execute as @e[tag=light_green.damage_target] run damage @s 10 light_green:spear_throw by @e[tag=light_green.boss.piglin_girl,limit=1,type=piglin_brute]
item replace entity @n[tag=light_green.boss.piglin_girl] weapon.mainhand with air
execute as @e[tag=light_green.damage_target] run function light_green:mob/boss/piglin_girl/add_hit
execute as @e[tag=light_green.damage_target] run tag @s remove light_green.damage_target
execute if entity @s[tag=light_green.hit] run function light_green:mob/boss/piglin_girl/throw_thing/spear/down
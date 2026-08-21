item replace entity @s weapon.mainhand with iron_axe[enchantments={efficiency:5}]
tag @s add light_green.attacker
execute at @s facing entity @n[tag=light_green.boss.piglin_girl.target] feet rotated ~ 0 positioned ^ ^ ^0.25 positioned ~ ~1 ~ run summon marker ~ ~ ~ {Tags:["light_green.damage_locator"]}
scoreboard players set $piglin_girl_spear.sweep_rotate light_green.main.math 0
execute unless score $piglin_girl_spear.sweep light_green.main.math matches 2 as @n[tag=light_green.damage_locator] at @s anchored eyes positioned ^ ^ ^ facing entity @n[tag=light_green.boss.piglin_girl.target] feet rotated ~-90 0 run function light_green:mob/boss/piglin_girl/animation/spear/sweep_detect
execute if score $piglin_girl_spear.sweep light_green.main.math matches 2 as @n[tag=light_green.damage_locator] at @s anchored eyes positioned ^ ^ ^ facing entity @n[tag=light_green.boss.piglin_girl.target] feet rotated ~-90 0 run function light_green:mob/boss/piglin_girl/animation/spear/sweep_detect_big
execute as @e[tag=light_green.damage_target] run damage @s 10 light_green:spear_sweep by @e[tag=light_green.boss.piglin_girl,limit=1,type=piglin_brute]
execute as @e[tag=light_green.damage_target] run damage @s 0.01 light_green:spear_sweep2 by @e[tag=light_green.boss.piglin_girl,limit=1,type=piglin_brute]
execute as @e[tag=light_green.damage_target] run function light_green:mob/boss/piglin_girl/animation/add_weapon_time
execute as @e[tag=light_green.damage_target] run function light_green:mob/boss/piglin_girl/cant_move/apply
execute as @e[tag=light_green.damage_target] run tag @s remove light_green.damage_target
tag @s remove light_green.attacker
item replace entity @s weapon.mainhand with air
kill @n[tag=light_green.damage_locator,type=marker]
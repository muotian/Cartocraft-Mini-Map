execute if entity @s[tag=light_green.from_player] run return run function light_green:mob/boss/piglin_girl/throw_thing/dagger/damge_player with storage light_green:weapon
execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#light_green:no_hp,tag=!light_green.boss.piglin_girl,tag=!light_green.boss.piglin_girl.throw_target] unless score @s light_green.team matches 1 run tag @s add light_green.damage_target
execute if entity @n[tag=light_green.damage_target] run tag @s add light_green.hit
execute if score $piglin_girl_level light_green.main.math matches 1 as @e[tag=light_green.damage_target] run damage @s 3 light_green:dagger_throw by @e[tag=light_green.boss.piglin_girl,limit=1,type=piglin_brute]
execute if score $piglin_girl_level light_green.main.math matches 2 unless score @s light_green.mob.ai matches 1 as @e[tag=light_green.damage_target] run damage @s 3 light_green:dagger_throw by @e[tag=light_green.boss.piglin_girl,limit=1,type=piglin_brute]
execute if score $piglin_girl_level light_green.main.math matches 2 if score @s light_green.mob.ai matches 1 as @e[tag=light_green.damage_target] run damage @s 4 light_green:dagger_power_throw by @e[tag=light_green.boss.piglin_girl,limit=1,type=piglin_brute]
execute if score $piglin_girl_level light_green.main.math matches 2 as @e[tag=light_green.damage_target] run function light_green:mob/boss/piglin_girl/animation/dagger/add_agony
execute as @e[tag=light_green.damage_target] run function light_green:mob/boss/piglin_girl/add_hit
execute as @e[tag=light_green.damage_target] run tag @s remove light_green.damage_target
execute if entity @s[tag=light_green.hit] run function light_green:mob/boss/piglin_girl/throw_thing/dagger/down
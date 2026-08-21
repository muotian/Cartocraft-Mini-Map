kill @e[tag=light_green.boss.piglin_girl.throw]
scoreboard players set $piglin_girl_dagger_throw_target light_green.main.math 10
execute as @n[type=minecraft:piglin_brute] run function light_green:mob/boss/piglin_girl/skill/dagger/replace
function light_green:arena/difficulty/get

tag @s add light_green.boss.challenger
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~33 ~-35 run function light_green:mob/boss/piglin_girl/summon
execute as @n[tag=light_green.boss.piglin_girl] run function light_green:mob/boss/piglin_girl/skill/level_summon0
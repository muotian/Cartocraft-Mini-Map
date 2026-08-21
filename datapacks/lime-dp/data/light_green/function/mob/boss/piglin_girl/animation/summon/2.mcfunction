execute positioned 0.0 0.0 0.0 run tp @s ~ ~ ~

execute if score @s light_green.boss.animation matches 0..20 as @a[tag=light_green.boss.challenger] run spectate @n[tag=light_green.piglin_girl.summon_camera2_real]

execute if score @s light_green.boss.animation matches 5 as @e[tag=aj.piglin_girl.root,limit=1] run function light_green:mob/boss/piglin_girl/animation/smoke/0
execute if score @s light_green.boss.animation matches 6 run data modify entity @n[tag=light_green.piglin_girl.summon_camera2_real] teleport_duration set value 5
execute if score @s light_green.boss.animation matches 5 at @n[tag=light_green.summon.graud_golem] positioned ~ ~35.1 ~23 facing entity @e[tag=aj.piglin_girl_head.root,limit=1] feet run tp @n[tag=light_green.piglin_girl.summon_camera2_real] ~ ~ ~ ~ ~
execute if score @s light_green.boss.animation matches 5 if entity @s[tag=light_green.level_summon] run function light_green:mob/boss/piglin_girl/second_health/0
execute if score @s light_green.boss.animation matches 5 run bossbar set light_green:piglin_girl players @a[tag=light_green.boss.challenger]

execute if score @s light_green.boss.animation matches 0 if entity @s[tag=light_green.level_summon] run scoreboard players set $piglin_girl_level light_green.main.math 2
execute if score @s light_green.boss.animation matches 0 run scoreboard players set @s light_green.main.math 1
execute if score @s light_green.boss.animation matches 0 run scoreboard players set $piglin_girl_summon light_green.main.math 1
execute if score @s light_green.boss.animation matches 0 run scoreboard players set $piglin_girl.summon light_green.main.math 1
execute if score @s light_green.boss.animation matches 0 if entity @s[tag=light_green.level_summon] run scoreboard players reset $piglin_girl_spear.sweep light_green.main.math
execute if score @s light_green.boss.animation matches 0 if entity @s[tag=light_green.level_summon] run scoreboard players reset $piglin_girl_hit light_green.main.math
execute if score @s light_green.boss.animation matches 0 if entity @s[tag=light_green.level_summon] run scoreboard players reset $piglin_girl_dagger_throw_target light_green.main.math
execute if score @s light_green.boss.animation matches 0 if entity @s[tag=light_green.level_summon] run scoreboard players reset $piglin_girl_dagger_jump light_green.main.math
execute if score @s light_green.boss.animation matches 0 as @a[tag=light_green.boss.challenger] run gamemode adventure @s
execute if score @s light_green.boss.animation matches 0 at @e[tag=aj.piglin_girl.root,limit=1] run tp @s ~ ~ ~
execute if score @s light_green.boss.animation matches 0 run data modify entity @s NoAI set value 0b
execute if score @s light_green.boss.animation matches 0 run kill @e[tag=light_green.piglin_girl.summon_camera1_real]
execute if score @s light_green.boss.animation matches 0 run kill @e[tag=light_green.piglin_girl.summon_camera2_real]
execute if score @s light_green.boss.animation matches 0 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/piglin_girl/move/detect_attack_nothing
execute if score @s light_green.boss.animation matches 0 run tag @s remove light_green.level_summon

execute if score $piglin_girl_summon light_green.main.math matches 1 unless entity @s[tag=light_green.level_summon] run function light_green:mob/boss/piglin_girl/animation/summon/detect
execute if score $piglin_girl_summon light_green.main.math matches 1 if entity @s[tag=light_green.level_summon] run function light_green:mob/boss/piglin_girl/animation/summon/detect_level
bossbar set light_green:piglin_girl players @a[tag=light_green.boss.challenger]
stopsound @a[tag=light_green.boss.challenger] record light_green:fight_music-piglin_girl-2
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~ run playsound light_green:fight_music-piglin_girl-2 record @a[tag=light_green.boss.challenger] ~ ~ ~ 3 1
scoreboard players set @s light_green.boss.music 6600
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~-31 positioned ~ ~ ~ run fill ~2 ~ ~ ~-2 ~2 ~ waxed_copper_bars
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~31 positioned ~ ~ ~ run fill ~2 ~ ~ ~-2 ~2 ~ waxed_copper_bars
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~35.1 ~23 facing entity @e[tag=aj.piglin_girl_head.root,limit=1] feet run tp @a[tag=light_green.boss.challenger] ~ ~ ~ ~ ~
scoreboard players set $piglin_girl.summon light_green.main.math 1
scoreboard players set $piglin_girl_level light_green.main.math 2
scoreboard players set @s light_green.main.math 1
scoreboard players set $piglin_girl.summon light_green.main.math 1
scoreboard players reset $piglin_girl_spear.sweep light_green.main.math
scoreboard players reset $piglin_girl_hit light_green.main.math
scoreboard players reset $piglin_girl_dagger_throw_target light_green.main.math
scoreboard players reset $piglin_girl_dagger_jump light_green.main.math
execute as @a[tag=light_green.boss.challenger] run gamemode adventure @s
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~35.1 ~-23 facing entity @e[tag=aj.piglin_girl_head.root,limit=1] feet run tp @e[tag=aj.piglin_girl.root,limit=1] ~ ~ ~ ~ ~
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~35.1 ~-23 facing entity @e[tag=aj.piglin_girl_head.root,limit=1] feet run tp @s ~ ~ ~ ~ ~
data modify entity @s NoAI set value 0b
kill @e[tag=light_green.piglin_girl.summon_camera1]
kill @e[tag=light_green.piglin_girl.summon_camera2]
kill @e[tag=light_green.piglin_girl.summon_camera0_real]
kill @e[tag=light_green.piglin_girl.summon_camera1_real]
kill @e[tag=light_green.piglin_girl.summon_camera2_real]
attribute @s movement_speed modifier remove light_green:piglin_girl_attack
function light_green:mob/boss/piglin_girl/move/detect_attack_nothing
function light_green:mob/boss/piglin_girl/second_health/0
tag @s remove light_green.level_summon
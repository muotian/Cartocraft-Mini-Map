stopsound @a[tag=light_green.boss.challenger] record light_green:fight_music-piglin_girl-2
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~ run playsound light_green:fight_music-piglin_girl-2 record @a[tag=light_green.boss.challenger] ~ ~ ~ 3 1
scoreboard players set @s light_green.boss.music 6600
execute as @a[tag=light_green.boss.challenger] run title @s times 2t 3t 2t
execute as @a[tag=light_green.boss.challenger] run title @s title {"text":"\ue002",font:"light_green:custom"}
execute as @e[tag=aj.piglin_girl_head.root,limit=1] run function animated_java:piglin_girl_head/animations/nothing_battle/play
function light_green:mob/boss/piglin_girl/second_health/0
bossbar set light_green:piglin_girl players @a[tag=light_green.boss.challenger]
scoreboard players set $piglin_girl_level light_green.main.math 2
kill @e[tag=light_green.piglin_girl.summon_camera3_real]
scoreboard players set $piglin_girl.summon light_green.main.math 1
scoreboard players reset $piglin_girl_spear.sweep light_green.main.math
scoreboard players reset $piglin_girl_hit light_green.main.math
scoreboard players reset $piglin_girl_dagger_throw_target light_green.main.math
scoreboard players reset $piglin_girl_dagger_jump light_green.main.math
attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~35.1 ~ run tp @e[tag=aj.piglin_girl.root,limit=1] ~ ~ ~ ~ ~
execute at @n[tag=light_green.summon.graud_golem] positioned ~ ~35.1 ~ run tp @s ~ ~ ~ ~ ~
execute as @a[tag=light_green.boss.challenger] at @n[tag=light_green.summon.graud_golem] run tp @s ~ ~34 ~23
execute as @a[tag=light_green.boss.challenger] run gamemode adventure @s
data modify entity @s NoAI set value 0b
scoreboard players reset @e[tag=light_green.boss.challenger] light_green.agony
kill @e[tag=light_green.boss.piglin_girl.dagger,scores={light_green.mob.ai=2..3}]
execute as @e[tag=light_green.boss.piglin_girl.shadow] at @s run particle minecraft:smoke ~ ~ ~ 0.25 1 0.25 0.01 500
kill @e[tag=light_green.boss.piglin_girl.shadow]
kill @e[tag=light_green.boss.piglin_girl.throw_target]
function light_green:mob/boss/piglin_girl/move/detect_attack_nothing
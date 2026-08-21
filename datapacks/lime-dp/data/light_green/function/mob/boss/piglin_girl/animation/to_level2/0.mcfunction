execute positioned 0.0 0.0 0.0 run tp @s ~ ~ ~
execute if score @s light_green.boss.animation matches 80..230 as @e[tag=aj.piglin_girl_head.root,limit=1] at @s run rotate @s 0.0 75.0
execute if score @s light_green.boss.animation matches 20..80 as @e[tag=aj.piglin_girl_head.root,limit=1] at @s run rotate @s ~ ~-0.5
execute if score @s light_green.boss.animation matches 20 as @e[tag=aj.piglin_girl_head.root,limit=1] at @s run rotate @s ~ ~15


execute if score @s light_green.boss.animation matches 230 run stopsound @a[tag=light_green.boss.challenger]
execute if score @s light_green.boss.animation matches 230 run kill @e[tag=light_green.boss.piglin_girl.throw]
execute if score @s light_green.boss.animation matches 230 run bossbar set light_green:piglin_girl players
execute if score @s light_green.boss.animation matches 210 as @e[tag=aj.piglin_girl_head.root,limit=1] run function animated_java:piglin_girl_head/animations/nothing/play
execute if score @s light_green.boss.animation matches 230 as @e[tag=aj.piglin_girl.root,limit=1] at @n[tag=light_green.summon.graud_golem] rotated 0 0 run tp @s ~ ~34 ~ ~ ~
execute if score @s light_green.boss.animation matches 220 as @e[tag=aj.piglin_girl.root,limit=1] at @n[tag=light_green.summon.graud_golem] rotated 0 0 run tp @s ~ ~34 ~ ~ ~
execute if score @s light_green.boss.animation matches 230 at @n[tag=light_green.summon.graud_golem] positioned ~0.75 ~34.1 ~1 run summon item_display ~ ~ ~ {Tags:["light_green.piglin_girl.summon_camera3_real"]}
execute if score @s light_green.boss.animation matches 230 as @n[tag=light_green.piglin_girl.summon_camera3_real] at @s facing entity @e[tag=aj.piglin_girl.root,limit=1] feet run rotate @s ~ ~-5
execute if score @s light_green.boss.animation matches 230 as @e[tag=aj.piglin_girl.root,limit=1] at @n[tag=light_green.summon.graud_golem] rotated 0 0 run tp @s ~ ~34 ~5 ~ ~
execute if score @s light_green.boss.animation matches 230 as @a[tag=light_green.boss.challenger] run gamemode spectator @s
execute if score @s light_green.boss.animation matches 0..230 as @a[tag=light_green.boss.challenger] run spectate @n[tag=light_green.piglin_girl.summon_camera3_real]
execute if score @s light_green.boss.animation matches 230 as @e[tag=aj.piglin_girl_head.root,limit=1] run function animated_java:piglin_girl_head/variants/default/apply
execute if score @s light_green.boss.animation matches 230 as @e[tag=aj.piglin_girl.root,limit=1] run function animated_java:piglin_girl/variants/heavy/apply
execute if score @s light_green.boss.animation matches 230 as @a[tag=light_green.boss.challenger] run title @s times 5t 15t 5t
execute if score @s light_green.boss.animation matches 230 as @a[tag=light_green.boss.challenger] run title @s title {"text":"\ue002",font:"light_green:custom"}
execute if score @s light_green.boss.animation matches 211 as @e[tag=aj.piglin_girl.root,limit=1] run function animated_java:piglin_girl/animations/to_level2/play
execute if score @s light_green.boss.animation matches 207 at @e[tag=aj.piglin_girl.root,limit=1] run playsound item.armor.equip_netherite hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 205 at @e[tag=aj.piglin_girl.root,limit=1] run playsound entity.player.attack.crit hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 175 unless score $piglin_girl_level2 light_green.main.math matches 1 run tellraw @a[tag=light_green.boss.challenger] [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog_when_level2_1"}]
execute if score @s light_green.boss.animation matches 150 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:block.gilded_blackstone.break hostile @a ~ ~ ~ 1 0
execute if score @s light_green.boss.animation matches 150 at @e[tag=aj.piglin_girl.root,limit=1] positioned ~ ~0.7 ~ run particle block{block_state:blackstone} ~ ~ ~ 0.1 0.1 0.1 0 50
execute if score @s light_green.boss.animation matches 150 as @e[tag=aj.piglin_girl.root,limit=1] run function animated_java:piglin_girl/variants/light/apply
execute if score @s light_green.boss.animation matches 150 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~ run playsound light_green:fight_music-piglin_girl-2 record @a[tag=light_green.boss.challenger] ~ ~ ~ 3 1
execute if score @s light_green.boss.animation matches 150 run scoreboard players set @s light_green.boss.music 6600
execute if score @s light_green.boss.animation matches 130 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:block.gilded_blackstone.break hostile @a ~ ~ ~ 1 0
execute if score @s light_green.boss.animation matches 130 at @e[tag=aj.piglin_girl.root,limit=1] positioned ~ ~1.5 ~0.3 run particle block{block_state:blackstone} ~ ~ ~ 0.1 0.1 0.1 0 50
execute if score @s light_green.boss.animation matches 130 as @e[tag=aj.piglin_girl_head.root,limit=1] run function animated_java:piglin_girl_head/variants/no_mask/apply
execute if score @s light_green.boss.animation matches 130 unless score $piglin_girl_level2 light_green.main.math matches 1 run tellraw @a[tag=light_green.boss.challenger] [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog_when_level2_2"}]
execute if score @s light_green.boss.animation matches 80 as @n[tag=light_green.piglin_girl.summon_camera3_real] run data modify entity @s teleport_duration set value 5
execute if score @s light_green.boss.animation matches 75..80 as @n[tag=light_green.piglin_girl.summon_camera3_real] at @s run tp @s ~ ~ ~ ~ ~-10
execute if score @s light_green.boss.animation matches 75 as @n[tag=light_green.piglin_girl.summon_camera3_real] run data modify entity @s teleport_duration set value 3
execute if score @s light_green.boss.animation matches 30..75 as @n[tag=light_green.piglin_girl.summon_camera3_real] at @s facing entity @e[tag=aj.piglin_girl_head.root,limit=1] feet run tp @s ~ ~0.04 ~0.03 ~ ~
execute if score @s light_green.boss.animation matches 30 unless score $piglin_girl_level2 light_green.main.math matches 1 run tellraw @a[tag=light_green.boss.challenger] [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog_when_level2_3"}]
execute if score @s light_green.boss.animation matches 30 as @e[tag=aj.piglin_girl_head.root,limit=1] run function animated_java:piglin_girl_head/animations/battle/play

execute if score @s light_green.boss.animation matches 80 at @e[tag=aj.piglin_girl_head.root,limit=1] run playsound entity.piglin.step hostile @a ~ ~ ~ 1 1.25
execute if score @s light_green.boss.animation matches 35 at @e[tag=aj.piglin_girl_head.root,limit=1] run playsound item.armor.equip_netherite hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 30 at @e[tag=aj.piglin_girl_head.root,limit=1] run playsound entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 20 at @e[tag=aj.piglin_girl.root,limit=1] run playsound item.armor.equip_netherite hostile @a ~ ~ ~ 1 1


execute if score @s light_green.boss.animation matches 0 as @a[tag=light_green.boss.challenger] run title @s times 5t 15t 5t
execute if score @s light_green.boss.animation matches 0 as @a[tag=light_green.boss.challenger] run title @s title {"text":"\ue002",font:"light_green:custom"}
execute if score @s light_green.boss.animation matches 0 as @e[tag=aj.piglin_girl_head.root,limit=1] run function animated_java:piglin_girl_head/animations/nothing_battle/play
execute if score @s light_green.boss.animation matches -10 run function light_green:mob/boss/piglin_girl/second_health/0
execute if score @s light_green.boss.animation matches -10 run bossbar set light_green:piglin_girl players @a[tag=light_green.boss.challenger]
execute if score @s light_green.boss.animation matches -10 run scoreboard players set $piglin_girl_level light_green.main.math 2
execute if score @s light_green.boss.animation matches -10 run kill @e[tag=light_green.piglin_girl.summon_camera3_real]
execute if score @s light_green.boss.animation matches -15 run scoreboard players set $piglin_girl.summon light_green.main.math 1
execute if score @s light_green.boss.animation matches -15 run scoreboard players reset $piglin_girl_spear.sweep light_green.main.math
execute if score @s light_green.boss.animation matches -15 run scoreboard players reset $piglin_girl_hit light_green.main.math
execute if score @s light_green.boss.animation matches -15 run scoreboard players reset $piglin_girl_dagger_throw_target light_green.main.math
execute if score @s light_green.boss.animation matches -15 run scoreboard players reset $piglin_girl_dagger_jump light_green.main.math
execute if score @s light_green.boss.animation matches -15 run scoreboard players set $piglin_girl_level2 light_green.main.math 1
execute if score @s light_green.boss.animation matches -15 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches -15 at @n[tag=light_green.summon.graud_golem] run tp @s ~ ~34 ~
execute if score @s light_green.boss.animation matches -15 as @a[tag=light_green.boss.challenger] at @n[tag=light_green.summon.graud_golem] run tp @s ~ ~34 ~23
execute if score @s light_green.boss.animation matches -15 as @a[tag=light_green.boss.challenger] run gamemode adventure @s
execute if score @s light_green.boss.animation matches -15 run data modify entity @s NoAI set value 0b
execute if score @s light_green.boss.animation matches -15 run scoreboard players reset @e light_green.agony
execute if score @s light_green.boss.animation matches -15 run function light_green:mob/boss/piglin_girl/move/detect_attack_nothing

execute if score $piglin_girl_level2 light_green.main.math matches 1 run function light_green:mob/boss/piglin_girl/animation/to_level2/detect
execute positioned 0.0 0.0 0.0 run tp @s ~ ~ ~

execute if score @s light_green.boss.animation matches 60 as @a[tag=light_green.boss.challenger] run gamemode spectator @s
execute if score @s light_green.boss.animation matches 0..60 as @a[tag=light_green.boss.challenger] run spectate @n[tag=light_green.piglin_girl.summon_camera0_real]

execute if score @s light_green.boss.animation matches 30 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~31 positioned ~ ~ ~ run fill ~2 ~ ~ ~-2 ~0 ~ air
execute if score @s light_green.boss.animation matches 30 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~-31 positioned ~ ~ ~ run fill ~2 ~ ~ ~-2 ~0 ~ air
execute if score @s light_green.boss.animation matches 30 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~31 positioned ~ ~ ~ run playsound minecraft:block.copper_trapdoor.open master @a ~ ~ ~ 1 0
execute if score @s light_green.boss.animation matches 30 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~-31 positioned ~ ~ ~ run playsound minecraft:block.copper_trapdoor.open master @a ~ ~ ~ 1 0


execute if score @s light_green.boss.animation matches 20 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~31 positioned ~ ~ ~ run fill ~2 ~ ~ ~-2 ~1 ~ air
execute if score @s light_green.boss.animation matches 20 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~-31 positioned ~ ~ ~ run fill ~2 ~ ~ ~-2 ~1 ~ air
execute if score @s light_green.boss.animation matches 20 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~31 positioned ~ ~ ~ run playsound minecraft:block.copper_trapdoor.open master @a ~ ~ ~ 1 0
execute if score @s light_green.boss.animation matches 20 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~-31 positioned ~ ~ ~ run playsound minecraft:block.copper_trapdoor.open master @a ~ ~ ~ 1 0


execute if score @s light_green.boss.animation matches 10 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~31 positioned ~ ~ ~ run fill ~2 ~ ~ ~-2 ~2 ~ air
execute if score @s light_green.boss.animation matches 10 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~-31 positioned ~ ~ ~ run fill ~2 ~ ~ ~-2 ~2 ~ air
execute if score @s light_green.boss.animation matches 10 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~31 positioned ~ ~ ~ run playsound minecraft:block.copper_trapdoor.open master @a ~ ~ ~ 1 0
execute if score @s light_green.boss.animation matches 10 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~-31 positioned ~ ~ ~ run playsound minecraft:block.copper_trapdoor.open master @a ~ ~ ~ 1 0


execute if score @s light_green.boss.animation matches 0 unless entity @s[tag=light_green.level_summon] run function light_green:mob/boss/piglin_girl/skill/summon
execute if score @s light_green.boss.animation matches 0 if entity @s[tag=light_green.level_summon] run function light_green:mob/boss/piglin_girl/skill/level_summon

execute if score $piglin_girl_summon light_green.main.math matches 1 unless entity @s[tag=light_green.level_summon] run function light_green:mob/boss/piglin_girl/animation/summon/detect
execute if score $piglin_girl_summon light_green.main.math matches 1 if entity @s[tag=light_green.level_summon] run function light_green:mob/boss/piglin_girl/animation/summon/detect_level
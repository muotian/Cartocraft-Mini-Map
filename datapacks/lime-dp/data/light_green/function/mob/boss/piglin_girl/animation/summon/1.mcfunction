execute positioned 0.0 0.0 0.0 run tp @s ~ ~ ~

execute if score @s light_green.boss.animation matches 90 run kill @n[tag=light_green.piglin_girl.summon_camera0_real]

execute if score @s light_green.boss.animation matches 90 unless score $piglin_girl_summon light_green.main.math matches 1 run tellraw @a[tag=light_green.boss.challenger] [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog_when_summon_1"}]
execute if score @s light_green.boss.animation matches 90 unless entity @s[tag=light_green.level_summon] at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~ run playsound light_green:fight_music-piglin_girl record @a[tag=light_green.boss.challenger] ~ ~ ~ 3 1
execute if score @s light_green.boss.animation matches 90 unless entity @s[tag=light_green.level_summon] run scoreboard players set @s light_green.boss.music 7140
execute if score @s light_green.boss.animation matches 90 if entity @s[tag=light_green.level_summon] at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~ run playsound light_green:fight_music-piglin_girl-2 record @a[tag=light_green.boss.challenger] ~ ~ ~ 3 1
execute if score @s light_green.boss.animation matches 90 if entity @s[tag=light_green.level_summon] run scoreboard players set @s light_green.boss.music 6600

execute if score @s light_green.boss.animation matches 80 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~-31 positioned ~ ~ ~ run fill ~2 ~ ~ ~-2 ~2 ~ air
execute if score @s light_green.boss.animation matches 35 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~-31 positioned ~ ~ ~ run fill ~2 ~ ~ ~-2 ~2 ~ waxed_copper_bars
execute if score @s light_green.boss.animation matches 35 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~31 positioned ~ ~ ~ run fill ~2 ~ ~ ~-2 ~2 ~ waxed_copper_bars
execute if score @s light_green.boss.animation matches 35 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~-31 positioned ~-2 ~ ~ run particle dust_pillar{block_state:{Name:blackstone}} ~ ~ ~ 0 0 0 2 100 force
execute if score @s light_green.boss.animation matches 35 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~-31 positioned ~-1 ~ ~ run particle dust_pillar{block_state:{Name:blackstone}} ~ ~ ~ 0 0 0 2 100 force
execute if score @s light_green.boss.animation matches 35 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~-31 positioned ~ ~ ~ run particle dust_pillar{block_state:{Name:blackstone}} ~ ~ ~ 0 0 0 2 100 force
execute if score @s light_green.boss.animation matches 35 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~-31 positioned ~1 ~ ~ run particle dust_pillar{block_state:{Name:blackstone}} ~ ~ ~ 0 0 0 2 100 force
execute if score @s light_green.boss.animation matches 35 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~-31 positioned ~2 ~ ~ run particle dust_pillar{block_state:{Name:blackstone}} ~ ~ ~ 0 0 0 2 100 force
execute if score @s light_green.boss.animation matches 35 at @n[tag=light_green.summon.graud_golem] positioned ~ ~34 ~-31 positioned ~ ~ ~ run playsound minecraft:block.anvil.land master @a ~ ~ ~ 3 0


execute if score @s light_green.boss.animation matches 10..90 as @e[tag=aj.piglin_girl.root,limit=1] at @s unless block ~ ~ ~ #air run tp @s ~ ~0.5 ~
execute if score @s light_green.boss.animation matches 10..90 as @e[tag=aj.piglin_girl.root,limit=1] at @s if block ~ ~ ~ barrier run tp @s ~ ~-0.5 ~
execute if score @s light_green.boss.animation matches 10..90 as @n[tag=light_green.piglin_girl.summon_camera1_real] at @s unless block ~ ~ ~ #air run tp @s ~ ~0.5 ~
execute if score @s light_green.boss.animation matches 10..90 as @n[tag=light_green.piglin_girl.summon_camera1_real] at @s if block ~ ~ ~ barrier run tp @s ~ ~-0.5 ~
execute if score @s light_green.boss.animation matches 10..90 as @n[tag=light_green.piglin_girl.summon_camera2_real] at @s unless block ~ ~ ~ #air run tp @s ~ ~0.5 ~
execute if score @s light_green.boss.animation matches 10..90 as @n[tag=light_green.piglin_girl.summon_camera2_real] at @s if block ~ ~ ~ barrier run tp @s ~ ~-0.5 ~
execute if score @s light_green.boss.animation matches 10..90 as @e[tag=aj.piglin_girl.root,limit=1] at @s run tp @s ^ ^ ^0.2
execute if score @s light_green.boss.animation matches 10..90 as @e[tag=aj.piglin_girl.root,limit=1] at @s as @n[tag=light_green.piglin_girl.summon_camera1_real] positioned as @s run tp @s ^ ^ ^0.2
execute if score @s light_green.boss.animation matches 10..90 as @e[tag=aj.piglin_girl.root,limit=1] at @s as @n[tag=light_green.piglin_girl.summon_camera2_real] positioned as @s run tp @s ^ ^ ^0.2
execute if score @s light_green.boss.animation matches 0..10 as @e[tag=aj.piglin_girl.root,limit=1] at @s run tp @s ^ ^ ^0.1
execute if score @s light_green.boss.animation matches 0..10 as @e[tag=aj.piglin_girl.root,limit=1] at @s as @n[tag=light_green.piglin_girl.summon_camera1_real] positioned as @s run tp @s ^ ^ ^0.1
execute if score @s light_green.boss.animation matches 10 run data modify entity @n[tag=light_green.piglin_girl.summon_camera2_real] teleport_duration set value 9
execute if score @s light_green.boss.animation matches 9 at @e[tag=aj.piglin_girl.root,limit=1] positioned ^ ^0.1 ^4 facing entity @e[tag=aj.piglin_girl_head.root,limit=1] feet run tp @n[tag=light_green.piglin_girl.summon_camera2_real] ~ ~ ~ ~ ~


execute if score @s light_green.boss.animation matches 80 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 2
execute if score @s light_green.boss.animation matches 80 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1.25
execute if score @s light_green.boss.animation matches 70 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 70 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 60 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 2
execute if score @s light_green.boss.animation matches 60 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1.25
execute if score @s light_green.boss.animation matches 50 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 50 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 40 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 2
execute if score @s light_green.boss.animation matches 40 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1.25
execute if score @s light_green.boss.animation matches 30 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 30 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 20 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 2
execute if score @s light_green.boss.animation matches 20 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1.25
execute if score @s light_green.boss.animation matches 10 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 10 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 0 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 2
execute if score @s light_green.boss.animation matches 0 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1.25

execute if score @s light_green.boss.animation matches 0 unless score $piglin_girl_summon light_green.main.math matches 1 run tellraw @a[tag=light_green.boss.challenger] [{translate:"light_green:piglin_general"},{translate:"light_green:piglin_girl.dialog_when_summon_2"}]

execute if score @s light_green.boss.animation matches 30 at @e[tag=aj.piglin_girl.root,limit=1] run playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 23 at @e[tag=aj.piglin_girl.root,limit=1] run playsound entity.player.attack.sweep hostile @a ~ ~ ~ 1 0.5

execute if score @s light_green.boss.animation matches 90 as @a[tag=light_green.boss.challenger] run gamemode spectator @s
execute if score @s light_green.boss.animation matches 90 as @n[tag=light_green.piglin_girl.summon_camera1_real] at @s facing entity @e[tag=aj.piglin_girl.root,limit=1] feet run rotate @s ~ ~
execute if score @s light_green.boss.animation matches 65..90 as @a[tag=light_green.boss.challenger] run spectate @n[tag=light_green.piglin_girl.summon_camera1_real]
execute if score @s light_green.boss.animation matches 65 as @n[tag=light_green.piglin_girl.summon_camera2_real] at @s facing entity @e[tag=aj.piglin_girl_head.root,limit=1] feet run rotate @s ~ ~
execute if score @s light_green.boss.animation matches 0..65 as @a[tag=light_green.boss.challenger] run spectate @n[tag=light_green.piglin_girl.summon_camera2_real]
execute if score @s light_green.boss.animation matches 0 unless entity @s[tag=light_green.level_summon] run function light_green:mob/boss/piglin_girl/skill/summon2
execute if score @s light_green.boss.animation matches 0 if entity @s[tag=light_green.level_summon] run function light_green:mob/boss/piglin_girl/skill/level_summon2

execute if score $piglin_girl_summon light_green.main.math matches 1 unless entity @s[tag=light_green.level_summon] run function light_green:mob/boss/piglin_girl/animation/summon/detect
execute if score $piglin_girl_summon light_green.main.math matches 1 if entity @s[tag=light_green.level_summon] run function light_green:mob/boss/piglin_girl/animation/summon/detect_level

tag @a remove icebird.b1s3_target.fake
tag @a remove icebird.b1s3_target.real
scoreboard players set $b1s3_real_rot icebird.boss1 0
scoreboard players set $b1s3_real_target_rot icebird.boss1 0
scoreboard players set $b1s3_real_rot_calc icebird.boss1 0
scoreboard players set $b1s3_fake_rot icebird.boss1 0
scoreboard players set $b1s3_fake_target_rot icebird.boss1 0
scoreboard players set $b1s3_fake_rot_calc icebird.boss1 0
execute store result score $b1s3.players icebird.boss1 run execute if entity @a[gamemode=!spectator]
execute store result score $b1s3.rng icebird.boss1 run random value 1..2

execute if score $b1s3.players icebird.boss1 matches 1 if score $b1s3.rng icebird.boss1 matches 1 run tag @p[gamemode=!spectator] add icebird.b1s3_target.real
execute if score $b1s3.players icebird.boss1 matches 1 if score $b1s3.rng icebird.boss1 matches 2 run tag @p[gamemode=!spectator] add icebird.b1s3_target.fake

execute if score $b1s3.players icebird.boss1 matches 2.. run tag @r[gamemode=!spectator,tag=!b1s3_target.fake] add icebird.b1s3_target.real
execute if score $b1s3.players icebird.boss1 matches 2.. run tag @r[gamemode=!spectator,tag=!b1s3_target.real] add icebird.b1s3_target.fake

execute as @a[tag=icebird.b1s3_target.real] at @n[tag=black.boss1_center] run summon item_display ~ ~ ~ {interpolation_duration:20,teleport_duration:1,Rotation:[-35.15625F,0F],Tags:["icebird.b1s3","icebird.b1s3_display_1"],glow_color_override:8881920,brightness:{sky:15,block:15},transformation:{left_rotation:[0.0044271457f,0.7077484f,0.70642984f,0.005434865f],right_rotation:[0f,0f,0f,1f],translation:[-0.006350994f,0.008433952f,4.499991f],scale:[3f,1f,1f]},item:{id:"minecraft:red_dye",count:1,components:{"minecraft:item_model":"black:real_arrow"}}}

execute as @a[tag=icebird.b1s3_target.fake] at @n[tag=black.boss1_center] run summon item_display ~ ~ ~ {interpolation_duration:20,teleport_duration:1,Rotation:[-35.15625F,0F],Tags:["icebird.b1s3","icebird.b1s3_display_2"],glow_color_override:5308551,brightness:{sky:15,block:15},transformation:{left_rotation:[0.0044271457f,0.7077484f,0.70642984f,0.005434865f],right_rotation:[0f,0f,0f,1f],translation:[-0.006350994f,0.008433952f,4.499991f],scale:[3f,1f,1f]},item:{id:"minecraft:red_dye",count:1,components:{"minecraft:item_model":"black:fake_arrow"}}}

execute at @n[tag=black.boss1_center] run spreadplayers ~ ~ 9 9 under 155 false @n[tag=icebird.b1s3]
execute as @n[tag=icebird.b1s3] at @s run tp @s ~ 155 ~

execute at @e[tag=icebird.b1s3_display_1] run summon zombie ~ ~ ~ {Silent:1b,Invulnerable:1b,Glowing:1b,DeathLootTable:"none",Team:"icebird.yellow",PersistenceRequired:1b,NoAI:1b,Health:1000f,Tags:["icebird.b1s3","icebird.b1s3_real"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:1000}]}

execute at @e[tag=icebird.b1s3_display_2] run summon zombie ~ ~ ~ {Silent:1b,Invulnerable:1b,Glowing:1b,DeathLootTable:"none",Team:"icebird.purple",PersistenceRequired:1b,NoAI:1b,Health:1000f,Tags:["icebird.b1s3","icebird.b1s3_fake"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:1000}]}

execute as @a[tag=icebird.b1s3_target.real] run function black:bossfight/boss1/skill3/note
execute as @a[tag=icebird.b1s3_target.fake] run function black:bossfight/boss1/skill3/note

bossbar set icebird.boss1_skill name {translate:"black.b1s3_item"}
bossbar set icebird.boss1_skill max 35
scoreboard players set $boss1.stop icebird.boss1 1


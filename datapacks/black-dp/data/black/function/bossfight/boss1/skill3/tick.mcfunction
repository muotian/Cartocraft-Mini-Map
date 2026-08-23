#icebird.b1s3
scoreboard players add @s icebird.boss1 1
execute if score @s icebird.boss1 matches 35 run scoreboard players set $boss1.stop icebird.boss1 0
execute as @s[type=item_display,tag=icebird.b1s3_display_1] at @s facing entity @p[tag=icebird.b1s3_target.real] feet run rotate @s ~ 0
execute as @s[type=item_display,tag=icebird.b1s3_display_2] at @s facing entity @p[tag=icebird.b1s3_target.fake] feet run rotate @s ~ 0
execute as @s[type=zombie,tag=icebird.b1s3_real] at @s facing entity @p[tag=icebird.b1s3_target.real] eyes run rotate @s ~ 0
execute as @s[type=zombie,tag=icebird.b1s3_fake] at @s facing entity @p[tag=icebird.b1s3_target.fake] eyes run rotate @s ~ 0
execute if score @s[type=item_display] icebird.boss1 matches ..8 run playsound minecraft:entity.elder_guardian.curse block @a[tag=icebird.b1s3_target.real] ~ ~ ~ 1.4 2
execute if score @s[type=item_display] icebird.boss1 matches ..8 run playsound minecraft:entity.elder_guardian.curse block @a[tag=icebird.b1s3_target.fake] ~ ~ ~ 1.4 2
execute if score @s[type=item_display] icebird.boss1 matches 4 run data modify entity @s transformation.scale set value [3f,9f,1f]
kill @s[type=item_display,scores={icebird.boss1=65}]

execute if score $difficulty icebird.core matches 1..2 store result score $b1s3_real_rot icebird.boss1 run data get entity @s[type=zombie,tag=icebird.b1s3_real] Rotation[0]
execute if score $difficulty icebird.core matches 1..2 store result score $b1s3_real_target_rot icebird.boss1 run data get entity @p[tag=icebird.b1s3_target.real,tag=black.fake] Rotation[0]
execute if score $difficulty icebird.core matches 1..2 store result score $b1s3_real_rot_calc icebird.boss1 run scoreboard players operation $b1s3_real_target_rot icebird.boss1 -= $b1s3_real_rot icebird.boss1
execute if score $difficulty icebird.core matches 1..2 if score $b1s3_real_rot_calc icebird.boss1 matches ..-1 run scoreboard players operation $b1s3_real_rot_calc icebird.boss1 *= #-1 icebird.core
execute if score $difficulty icebird.core matches 1..2 if score $b1s3_real_rot_calc icebird.boss1 matches 155..205 as @s[type=zombie,tag=icebird.b1s3_real] at @s run particle flash{color:[0.933,1.000,0.000,1.00]} ~ ~0.5 ~ 0 0 0 0 1 force @p[tag=icebird.b1s3_target.real]
execute if score $difficulty icebird.core matches 1..2 if score $b1s3_real_rot_calc icebird.boss1 matches 155..205 run tag @s[type=zombie,tag=icebird.b1s3_real] add icebird.safe
execute if score $difficulty icebird.core matches 1..2 unless score $b1s3_real_rot_calc icebird.boss1 matches 155..205 run tag @s[type=zombie,tag=icebird.b1s3_real] remove icebird.safe

execute if score $difficulty icebird.core matches 1..2 store result score $b1s3_fake_rot icebird.boss1 run data get entity @s[type=zombie,tag=icebird.b1s3_fake] Rotation[0]
execute if score $difficulty icebird.core matches 1..2 store result score $b1s3_fake_target_rot icebird.boss1 run data get entity @p[tag=icebird.b1s3_target.fake,tag=black.real] Rotation[0]
execute if score $difficulty icebird.core matches 1..2 store result score $b1s3_fake_rot_calc icebird.boss1 run scoreboard players operation $b1s3_fake_target_rot icebird.boss1 -= $b1s3_fake_rot icebird.boss1
execute if score $difficulty icebird.core matches 1..2 if score $b1s3_fake_rot_calc icebird.boss1 matches ..-1 run scoreboard players operation $b1s3_fake_rot_calc icebird.boss1 *= #-1 icebird.core
execute if score $difficulty icebird.core matches 1..2 if score $b1s3_fake_rot_calc icebird.boss1 matches 155..205 as @s[type=zombie,tag=icebird.b1s3_fake] at @s run particle flash{color:[0.867,0.000,1.000,1.00]} ~ ~0.5 ~ 0 0 0 0 1 force @p[tag=icebird.b1s3_target.fake]
execute if score $difficulty icebird.core matches 1..2 if score $b1s3_fake_rot_calc icebird.boss1 matches 155..205 run tag @s[type=zombie,tag=icebird.b1s3_fake] add icebird.safe
execute if score $difficulty icebird.core matches 1..2 unless score $b1s3_fake_rot_calc icebird.boss1 matches 155..205 run tag @s[type=zombie,tag=icebird.b1s3_fake] remove icebird.safe

execute if score $difficulty icebird.core matches 3 store result score $b1s3_real_rot icebird.boss1 run data get entity @s[type=zombie,tag=icebird.b1s3_real] Rotation[0]
execute if score $difficulty icebird.core matches 3 store result score $b1s3_real_target_rot icebird.boss1 run data get entity @p[tag=icebird.b1s3_target.real,tag=black.fake] Rotation[0]
execute if score $difficulty icebird.core matches 3 store result score $b1s3_real_rot_calc icebird.boss1 run scoreboard players operation $b1s3_real_target_rot icebird.boss1 -= $b1s3_real_rot icebird.boss1
execute if score $difficulty icebird.core matches 3 if score $b1s3_real_rot_calc icebird.boss1 matches ..-1 run scoreboard players operation $b1s3_real_rot_calc icebird.boss1 *= #-1 icebird.core
execute if score $difficulty icebird.core matches 3 if score $b1s3_real_rot_calc icebird.boss1 matches 175..185 as @s[type=zombie,tag=icebird.b1s3_real] at @s run particle flash{color:[0.933,1.000,0.000,1.00]} ~ ~0.5 ~ 0 0 0 0 1 force @p[tag=icebird.b1s3_target.real]
execute if score $difficulty icebird.core matches 3 if score $b1s3_real_rot_calc icebird.boss1 matches 175..185 run tag @s[type=zombie,tag=icebird.b1s3_real] add icebird.safe
execute if score $difficulty icebird.core matches 3 unless score $b1s3_real_rot_calc icebird.boss1 matches 175..185 run tag @s[type=zombie,tag=icebird.b1s3_real] remove icebird.safe

execute if score $difficulty icebird.core matches 3 store result score $b1s3_fake_rot icebird.boss1 run data get entity @s[type=zombie,tag=icebird.b1s3_fake] Rotation[0]
execute if score $difficulty icebird.core matches 3 store result score $b1s3_fake_target_rot icebird.boss1 run data get entity @p[tag=icebird.b1s3_target.fake,tag=black.real] Rotation[0]
execute if score $difficulty icebird.core matches 3 store result score $b1s3_fake_rot_calc icebird.boss1 run scoreboard players operation $b1s3_fake_target_rot icebird.boss1 -= $b1s3_fake_rot icebird.boss1
execute if score $difficulty icebird.core matches 3 if score $b1s3_fake_rot_calc icebird.boss1 matches ..-1 run scoreboard players operation $b1s3_fake_rot_calc icebird.boss1 *= #-1 icebird.core
execute if score $difficulty icebird.core matches 3 if score $b1s3_fake_rot_calc icebird.boss1 matches 175..185 as @s[type=zombie,tag=icebird.b1s3_fake] at @s run particle flash{color:[0.867,0.000,1.000,1.00]} ~ ~0.5 ~ 0 0 0 0 1 force @p[tag=icebird.b1s3_target.fake]
execute if score $difficulty icebird.core matches 3 if score $b1s3_fake_rot_calc icebird.boss1 matches 175..185 run tag @s[type=zombie,tag=icebird.b1s3_fake] add icebird.safe
execute if score $difficulty icebird.core matches 3 unless score $b1s3_fake_rot_calc icebird.boss1 matches 175..185 run tag @s[type=zombie,tag=icebird.b1s3_fake] remove icebird.safe

execute as @s[type=zombie,tag=icebird.b1s3_real] if score @s icebird.boss1 matches 70.. rotated ~ 0 run tp @s ^ ^ ^1 facing entity @p[tag=icebird.b1s3_target.real]

execute as @s[type=zombie,tag=icebird.b1s3_fake] if score @s icebird.boss1 matches 70.. rotated ~ 0 run tp @s ^ ^ ^1 facing entity @p[tag=icebird.b1s3_target.fake]

execute as @s[type=zombie,tag=icebird.b1s3_real] if score @s icebird.boss1 matches 70.. if entity @p[tag=icebird.b1s3_target.real,distance=..2] run function black:bossfight/boss1/skill3/damage_ini

execute as @s[type=zombie,tag=icebird.b1s3_fake] if score @s icebird.boss1 matches 70.. if entity @p[tag=icebird.b1s3_target.fake,distance=..2] run function black:bossfight/boss1/skill3/damage_ini
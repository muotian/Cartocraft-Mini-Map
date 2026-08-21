execute if score @s light_green.boss.animation matches 86..95 run rotate @s ~-10 ~
execute if score @s light_green.boss.animation matches 66..75 run rotate @s ~9 ~
execute if score @s light_green.boss.animation matches 21..40 run rotate @s ~9 ~
execute if score @s light_green.boss.animation matches 11..20 run rotate @s ~5 ~
execute if score @s light_green.boss.animation matches 86..95 run tp @s ~0.045 ~ ~
execute if score @s light_green.boss.animation matches 76..85 run tp @s ^ ^ ^0.06
execute if score @s light_green.boss.animation matches 41..75 run tp @s ^ ^ ^0.105
execute if score @s light_green.boss.animation matches 36..40 run tp @s ^ ^ ^0.1
execute if score @s light_green.boss.animation matches 26..35 run tp @s ^ ^ ^0.15
execute if score @s light_green.boss.animation matches 21..25 run tp @s ^ ^ ^0.1
execute if score @s light_green.boss.animation matches 11..20 rotated 180 0 run tp @s ^ ^ ^0.0975
execute if score @s light_green.boss.animation matches 0..8 run tp @s ^ ^ ^-0.11
execute if score @s light_green.boss.animation matches 0 run function light_green:npc_girl/apply/to_sit

execute if score @s light_green.boss.animation matches 95 at @s run playsound item.armor.equip_leather neutral @a ~ ~ ~ 1 0.5
execute if score @s light_green.boss.animation matches 85 at @s run playsound entity.piglin.step neutral @a ~ ~ ~ 1 0.8
execute if score @s light_green.boss.animation matches 75 at @s run playsound entity.piglin.step neutral @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 65 at @s run playsound entity.piglin.step neutral @a ~ ~ ~ 1 0.8
execute if score @s light_green.boss.animation matches 55 at @s run playsound entity.piglin.step neutral @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 45 at @s run playsound entity.piglin.step neutral @a ~ ~ ~ 1 0.8
execute if score @s light_green.boss.animation matches 40 at @s run playsound item.armor.equip_leather neutral @a ~ ~ ~ 1 0.75
execute if score @s light_green.boss.animation matches 35 at @s run playsound entity.piglin.step neutral @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 25 at @s run playsound entity.piglin.step neutral @a ~ ~ ~ 1 0.8
execute if score @s light_green.boss.animation matches 15 at @s run playsound entity.piglin.step neutral @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 5 at @s run playsound minecraft:item.armor.equip_leather neutral @a ~ ~ ~ 1 0
execute if score @s light_green.boss.animation matches 3 at @s run playsound minecraft:block.wood.break block @a ~ ~ ~ 1 0.5

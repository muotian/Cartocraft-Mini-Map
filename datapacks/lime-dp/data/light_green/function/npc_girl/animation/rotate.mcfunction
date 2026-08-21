execute if score @s light_green.boss.animation matches 60 as @n[tag=aj.piglin_girl_npc.root,type=item_display] run function animated_java:piglin_girl_npc/animations/rotate/play
execute if score @s light_green.boss.animation matches 40..60 run rotate @s ~9 ~
execute if score @s light_green.boss.animation matches 40..60 run tp @s ~ ~ ~0.04
execute if score @s light_green.boss.animation matches 30 run scoreboard players set @s light_green.boss.attack_type 1
execute if score @s light_green.boss.animation matches 0 run function light_green:npc_girl/apply/walk

execute if score @s light_green.boss.animation matches 30 at @n[tag=light_green.summon.graud_golem] positioned ~-6 ~56 ~-4 run function light_green:item/beer
execute if score @s light_green.boss.animation matches 30 at @s run playsound minecraft:block.wood.fall neutral @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 55 at @s run playsound item.armor.equip_leather neutral @a ~ ~ ~ 1 0.5
execute if score @s light_green.boss.animation matches 50 at @s run playsound entity.piglin.step neutral @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 40 at @s run playsound item.armor.equip_leather neutral @a ~ ~ ~ 1 0.3
execute if score @s light_green.boss.animation matches 35 at @s run playsound entity.piglin.step neutral @a ~ ~ ~ 1 0.8

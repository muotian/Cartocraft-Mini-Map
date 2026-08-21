execute if score @s light_green.boss.animation matches 1..10 run rotate @s ~-5 ~
execute if score @s light_green.boss.animation matches 1..10 run tp @s ^0.0355 ^ ^-0.0125
execute if score @s light_green.boss.animation matches 1 run tp @s ~ ~ ~
execute if score @s light_green.boss.animation matches 0 run function light_green:npc_girl/sit
execute if score @s light_green.boss.animation matches 0 run scoreboard players set @s light_green.dialog.time 60
execute if score @s light_green.boss.animation matches 0 run scoreboard players reset @s light_green.piglin_girl_type

execute if score @s light_green.boss.animation matches 9 at @s run playsound minecraft:item.armor.equip_leather neutral @a ~ ~ ~ 1 0
execute if score @s light_green.boss.animation matches 1 at @s run playsound minecraft:block.wood.break block @a ~ ~ ~ 1 1
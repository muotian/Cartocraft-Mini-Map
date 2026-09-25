execute as @a at @s run tag @e[type=interaction,tag=wool_purple.box_interaction,distance=..5] add wool_purple.find_looking.candidate
execute as @a at @s if entity @e[type=interaction,tag=wool_purple.find_looking.candidate] run function ordered_splinter:box/find
execute as @e[type=interaction,tag=!wool_purple.being_looked,tag=wool_purple.box_interaction] at @s if score @s wool_purple.is_glowing matches 1.. as @n[type=item_display,tag=wool_purple.aj_box,distance=0..2] on passengers run data modify entity @s Glowing set value 0b
execute as @e[type=interaction,tag=!wool_purple.being_looked,tag=wool_purple.box_interaction] at @s if score @s wool_purple.is_glowing matches 1.. run scoreboard players set @s wool_purple.is_glowing 0
tag @e[type=interaction,tag=wool_purple.find_looking.candidate] remove wool_purple.find_looking.candidate
tag @e[type=interaction,tag=wool_purple.being_looked] remove wool_purple.being_looked

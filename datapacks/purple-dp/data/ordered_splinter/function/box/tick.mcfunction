# Opening boxes
execute as @e[tag=wool_purple.open_box] at @s if data entity @s interaction run function ordered_splinter:box/open_box/open_box
scoreboard players add @e[tag=wool_purple.animation] wool_purple.animation 1
execute as @e[tag=aj.box.root,tag=wool_purple.animation] if score @s wool_purple.animation matches 50 run function animated_java:box/remove/this
execute as @e[tag=wool_purple.open_demon_box] at @s if data entity @s interaction run function ordered_splinter:box/open_box/open_demon_box
execute as @e[tag=aj.demon_box.root,tag=wool_purple.animation] if score @s wool_purple.animation matches 50 run function animated_java:demon_box/remove/this
execute at @e[tag=aj.demon_box.root] if entity @p[distance=..20] run particle dust_color_transition{from_color:[0.549,0.000,0.000],to_color:[0.902,0.000,0.000],scale:1} ~ ~1 ~ 0.45 0.45 0.45 5 2
execute as @e[tag=wool_purple.open_boss_box] at @s if data entity @s interaction run function ordered_splinter:box/open_box/open_boss_box
execute as @e[tag=aj.boss_box.root,tag=wool_purple.animation] if score @s wool_purple.animation matches 50 run function animated_java:boss_box/remove/this
# Glowing
execute as @a at @s run tag @e[type=interaction,tag=wool_purple.box_interaction,distance=..5] add wool_purple.find_looking.candidate
execute as @a at @s if entity @e[type=interaction,tag=wool_purple.find_looking.candidate] run function ordered_splinter:box/find
execute as @e[type=interaction,tag=!wool_purple.being_looked,tag=wool_purple.box_interaction] at @s if score @s wool_purple.is_glowing matches 1.. as @n[type=item_display,tag=wool_purple.aj_box,distance=0..2] on passengers run data modify entity @s Glowing set value 0b
execute as @e[type=interaction,tag=!wool_purple.being_looked,tag=wool_purple.box_interaction] at @s if score @s wool_purple.is_glowing matches 1.. run scoreboard players set @s wool_purple.is_glowing 0
tag @e[type=interaction,tag=wool_purple.find_looking.candidate] remove wool_purple.find_looking.candidate
tag @e[type=interaction,tag=wool_purple.being_looked] remove wool_purple.being_looked
scoreboard players set $max wool_purple.find_look.temp 0

tag @e[type=interaction,tag=wool_purple.find_looking.candidate] add wool_purple.find_looking.result

execute as @e[type=interaction,tag=wool_purple.find_looking.result] store result score @s wool_purple.find_look.temp run scoreboard players add $max wool_purple.find_look.temp 1

scoreboard players set $filter wool_purple.find_look.temp 0

tag @e[type=interaction,tag=wool_purple.find_looking.in_filter] remove wool_purple.find_looking.in_filter

function ordered_splinter:box/internal/filter/iteration

execute as @e[type=interaction,tag=wool_purple.find_looking.result,tag=wool_purple.box_interaction] at @s unless score @s wool_purple.is_glowing matches 1.. store result score @s wool_purple.is_glowing as @n[type=item_display,tag=wool_purple.aj_box,distance=0..2] on passengers run data modify entity @s Glowing set value 1b

tag @e[type=interaction,tag=wool_purple.find_looking.result] add wool_purple.being_looked
tag @e[type=interaction,tag=wool_purple.find_looking.result] remove wool_purple.find_looking.result
execute if entity @a[distance=..10] run scoreboard players remove @s light_green.dialog.time 1
execute if score @s light_green.dialog.time matches 0 run function light_green:npc_girl/talk/0
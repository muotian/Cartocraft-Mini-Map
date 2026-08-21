execute if score @s light_green.dialog matches 100.. run return fail
execute if entity @s[tag=light_green.dialog_win] run scoreboard players set $take_wool light_green.main.math 4
execute if entity @s[tag=light_green.dialog_win_new] run scoreboard players set @s light_green.dialog 4
scoreboard players add @s light_green.dialog 1
execute if score @s light_green.dialog matches 1 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 1 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 1 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 1 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 1 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 1 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 1 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 1 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 1 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 1 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 1 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 1 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 1 run tellraw @a[distance=..10] {text:""}
execute if score @s light_green.dialog matches 1 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk"}]
execute if score @s light_green.dialog matches 2 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk2"}]
execute if score @s light_green.dialog matches 3 run tellraw @a[distance=..10] [{translate:"light_green:piglin_girl_dialog"},{translate:"light_green:piglin_girl.talk3"}]
execute if score @s light_green.dialog matches 4 at @s as @n[tag=light_green.chair.block] run data modify entity @s Glowing set value true

execute if score @s light_green.dialog matches 5.. if score $take_wool light_green.main.math matches 1 run function light_green:npc_girl/talk/lose
execute if score @s light_green.dialog matches 5.. if score $take_wool light_green.main.math matches 2 run function light_green:npc_girl/talk/level2
execute if score @s light_green.dialog matches 5.. if score $take_wool light_green.main.math matches 3 run function light_green:npc_girl/talk/lose_to_level2
execute if score @s light_green.dialog matches 5.. if score $take_wool light_green.main.math matches 4 run function light_green:npc_girl/talk/win

execute if entity @s[tag=light_green.dialog_win_new] run tag @s remove light_green.dialog_win_new
execute unless score @s light_green.dialog matches 4.. run scoreboard players set @s light_green.dialog.time 60
execute if score @s light_green.dialog matches 5.. run scoreboard players set @s light_green.dialog.time 60
execute if entity @s[tag=light_green.dialog_win] if score @s light_green.dialog matches 19 if score $area_wool light_green.main.math matches 1 run scoreboard players set @s light_green.dialog.time -1
# 奔雷刃・改

execute if score @s brown_wool.thunder_blade_alter1 matches 1.. run scoreboard players remove @s brown_wool.thunder_blade_alter1 1
execute if score @s brown_wool.thunder_blade_alter2 matches 1.. run scoreboard players remove @s brown_wool.thunder_blade_alter2 1
execute if score @s brown_wool.thunder_blade_alter3 matches 1.. run scoreboard players remove @s brown_wool.thunder_blade_alter3 1
execute if score @s brown_wool.thunder_blade_alter4 matches 1.. run scoreboard players remove @s brown_wool.thunder_blade_alter4 1
execute if score @s brown_wool.thunder_blade_alter5 matches 1.. run scoreboard players remove @s brown_wool.thunder_blade_alter5 1
execute if score @s brown_wool.thunder_blade_alter6 matches 1.. run scoreboard players remove @s brown_wool.thunder_blade_alter6 1

execute if score @s brown_wool.thunder_blade_alter1 matches 1.. at @s rotated ~ 0 if block ^ ^ ^0.1 #is_air if block ^ ^ ^0.2 #is_air if block ^ ^ ^0.3 #is_air if block ^ ^ ^0.4 #is_air if block ^ ^ ^0.5 #is_air if block ^ ^ ^0.6 #is_air if block ^ ^ ^0.7 #is_air if block ^ ^ ^0.8 #is_air if block ^ ^ ^0.9 #is_air if block ^ ^ ^1 #is_air run tp @s ^ ^ ^1
execute if score @s brown_wool.thunder_blade_alter1 matches 1.. at @s rotated ~ 0 if block ^ ^ ^0.1 #is_air if block ^ ^ ^0.2 #is_air if block ^ ^ ^0.3 #is_air if block ^ ^ ^0.4 #is_air if block ^ ^ ^0.5 #is_air if block ^ ^ ^0.6 #is_air if block ^ ^ ^0.7 #is_air if block ^ ^ ^0.8 #is_air if block ^ ^ ^0.9 #is_air if block ^ ^ ^1 #is_air run tp @s ^ ^ ^1
execute if score @s brown_wool.thunder_blade_alter2 matches 1.. at @s rotated ~ 0 if block ^ ^ ^-0.1 #is_air if block ^ ^ ^-0.2 #is_air if block ^ ^ ^-0.3 #is_air if block ^ ^ ^-0.4 #is_air if block ^ ^ ^-0.5 #is_air if block ^ ^ ^-0.6 #is_air if block ^ ^ ^-0.7 #is_air if block ^ ^ ^-0.8 #is_air if block ^ ^ ^-0.9 #is_air if block ^ ^ ^-1 #is_air run tp @s ^ ^ ^-1

execute if score @s brown_wool.thunder_blade_alter3 matches 1.. at @s rotated ~ 0 if block ^ ^ ^0.1 #is_air if block ^ ^ ^0.2 #is_air if block ^ ^ ^0.3 #is_air if block ^ ^ ^0.4 #is_air if block ^ ^ ^0.5 #is_air if block ^ ^ ^0.6 #is_air if block ^ ^ ^0.7 #is_air if block ^ ^ ^0.8 #is_air if block ^ ^ ^0.9 #is_air if block ^ ^ ^1 #is_air if block ^ ^ ^1.1 #is_air if block ^ ^ ^1.2 #is_air if block ^ ^ ^1.3 #is_air if block ^ ^ ^1.4 #is_air if block ^ ^ ^1.5 #is_air run tp @s ^ ^ ^1.5
execute if score @s brown_wool.thunder_blade_alter3 matches 1.. at @s rotated ~ 0 if block ^ ^ ^0.1 #is_air if block ^ ^ ^0.2 #is_air if block ^ ^ ^0.3 #is_air if block ^ ^ ^0.4 #is_air if block ^ ^ ^0.5 #is_air if block ^ ^ ^0.6 #is_air if block ^ ^ ^0.7 #is_air if block ^ ^ ^0.8 #is_air if block ^ ^ ^0.9 #is_air if block ^ ^ ^1 #is_air if block ^ ^ ^1.1 #is_air if block ^ ^ ^1.2 #is_air if block ^ ^ ^1.3 #is_air if block ^ ^ ^1.4 #is_air if block ^ ^ ^1.5 #is_air run tp @s ^ ^ ^1.5
execute if score @s brown_wool.thunder_blade_alter4 matches 1.. at @s rotated ~ 0 if block ^ ^ ^-0.1 #is_air if block ^ ^ ^-0.2 #is_air if block ^ ^ ^-0.3 #is_air if block ^ ^ ^-0.4 #is_air if block ^ ^ ^-0.5 #is_air if block ^ ^ ^-0.6 #is_air if block ^ ^ ^-0.7 #is_air if block ^ ^ ^-0.8 #is_air if block ^ ^ ^-0.9 #is_air if block ^ ^ ^-1 #is_air if block ^ ^ ^-1.1 #is_air if block ^ ^ ^-1.2 #is_air if block ^ ^ ^-1.3 #is_air if block ^ ^ ^-1.4 #is_air if block ^ ^ ^-1.5 #is_air run tp @s ^ ^ ^-1.5


execute if score @s brown_wool.thunder_blade_alter1 matches 1.. at @s as @e[type=!player,type=!item,type=!painting,type=!item_frame,distance=..1.5] run damage @s 14 lightning_bolt
execute if score @s brown_wool.thunder_blade_alter2 matches 1.. at @s as @e[type=!player,type=!item,type=!painting,type=!item_frame,distance=..1.5] run damage @s 14 lightning_bolt

execute if score @s brown_wool.thunder_blade_alter3 matches 1.. at @s as @e[type=!player,type=!item,type=!painting,type=!item_frame,distance=..1.8] run damage @s 20 lightning_bolt
execute if score @s brown_wool.thunder_blade_alter4 matches 1.. at @s as @e[type=!player,type=!item,type=!painting,type=!item_frame,distance=..1.8] run damage @s 20 lightning_bolt

execute if score @s brown_wool.thunder_blade_alter5 matches 1.. at @s run particle electric_spark ~ ~ ~ 0.5 1 0.5 0.1 30

execute if score @s brown_wool.thunder_blade_alter6 matches 0 run scoreboard players reset @s brown_wool.thunder_blade_alter1
execute if score @s brown_wool.thunder_blade_alter6 matches 0 run scoreboard players reset @s brown_wool.thunder_blade_alter2
execute if score @s brown_wool.thunder_blade_alter6 matches 0 run scoreboard players reset @s brown_wool.thunder_blade_alter3
execute if score @s brown_wool.thunder_blade_alter6 matches 0 run scoreboard players reset @s brown_wool.thunder_blade_alter4
execute if score @s brown_wool.thunder_blade_alter6 matches 0 run scoreboard players reset @s brown_wool.thunder_blade_alter5

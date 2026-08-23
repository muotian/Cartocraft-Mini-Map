# 奔雷刃:技能

execute if score @s brown_wool.thunder_blade1 matches 1.. run scoreboard players remove @s brown_wool.thunder_blade1 1
execute if score @s brown_wool.thunder_blade2 matches 1.. run scoreboard players remove @s brown_wool.thunder_blade2 1
execute if score @s brown_wool.thunder_blade3 matches 1.. run scoreboard players remove @s brown_wool.thunder_blade3 1
execute if score @s brown_wool.thunder_blade4 matches 1.. run scoreboard players remove @s brown_wool.thunder_blade4 1
execute if score @s brown_wool.thunder_blade5 matches 1.. run scoreboard players remove @s brown_wool.thunder_blade5 1

execute if score @s brown_wool.thunder_blade1 matches 1.. at @s rotated ~ 0 if block ^ ^ ^0.1 #is_air if block ^ ^ ^0.2 #is_air if block ^ ^ ^0.3 #is_air if block ^ ^ ^0.4 #is_air if block ^ ^ ^0.5 #is_air if block ^ ^ ^0.6 #is_air if block ^ ^ ^0.7 #is_air if block ^ ^ ^0.8 #is_air if block ^ ^ ^0.9 #is_air if block ^ ^ ^1 #is_air run tp @s ^ ^ ^1
execute if score @s brown_wool.thunder_blade1 matches 1.. at @s rotated ~ 0 if block ^ ^ ^0.1 #is_air if block ^ ^ ^0.2 #is_air if block ^ ^ ^0.3 #is_air if block ^ ^ ^0.4 #is_air if block ^ ^ ^0.5 #is_air if block ^ ^ ^0.6 #is_air if block ^ ^ ^0.7 #is_air if block ^ ^ ^0.8 #is_air if block ^ ^ ^0.9 #is_air if block ^ ^ ^1 #is_air run tp @s ^ ^ ^1
execute if score @s brown_wool.thunder_blade2 matches 1.. at @s rotated ~ 0 if block ^ ^ ^-0.1 #is_air if block ^ ^ ^-0.2 #is_air if block ^ ^ ^-0.3 #is_air if block ^ ^ ^-0.4 #is_air if block ^ ^ ^-0.5 #is_air if block ^ ^ ^-0.6 #is_air if block ^ ^ ^-0.7 #is_air if block ^ ^ ^-0.8 #is_air if block ^ ^ ^-0.9 #is_air if block ^ ^ ^-1 #is_air run tp @s ^ ^ ^-1

execute if score @s brown_wool.thunder_blade3 matches 1.. at @s rotated ~ 0 if block ^ ^ ^0.1 #is_air if block ^ ^ ^0.2 #is_air if block ^ ^ ^0.3 #is_air if block ^ ^ ^0.4 #is_air if block ^ ^ ^0.5 #is_air if block ^ ^ ^0.6 #is_air if block ^ ^ ^0.7 #is_air if block ^ ^ ^0.8 #is_air if block ^ ^ ^0.9 #is_air if block ^ ^ ^1 #is_air if block ^ ^ ^1.1 #is_air if block ^ ^ ^1.2 #is_air if block ^ ^ ^1.25 #is_air run tp @s ^ ^ ^1.25
execute if score @s brown_wool.thunder_blade3 matches 1.. at @s rotated ~ 0 if block ^ ^ ^0.1 #is_air if block ^ ^ ^0.2 #is_air if block ^ ^ ^0.3 #is_air if block ^ ^ ^0.4 #is_air if block ^ ^ ^0.5 #is_air if block ^ ^ ^0.6 #is_air if block ^ ^ ^0.7 #is_air if block ^ ^ ^0.8 #is_air if block ^ ^ ^0.9 #is_air if block ^ ^ ^1 #is_air if block ^ ^ ^1.1 #is_air if block ^ ^ ^1.2 #is_air if block ^ ^ ^1.25 #is_air run tp @s ^ ^ ^1.25
execute if score @s brown_wool.thunder_blade4 matches 1.. at @s rotated ~ 0 if block ^ ^ ^-0.1 #is_air if block ^ ^ ^-0.2 #is_air if block ^ ^ ^-0.3 #is_air if block ^ ^ ^-0.4 #is_air if block ^ ^ ^-0.5 #is_air if block ^ ^ ^-0.6 #is_air if block ^ ^ ^-0.7 #is_air if block ^ ^ ^-0.8 #is_air if block ^ ^ ^-0.9 #is_air if block ^ ^ ^-1 #is_air if block ^ ^ ^-1.1 #is_air if block ^ ^ ^-1.2 #is_air if block ^ ^ ^-1.25 #is_air run tp @s ^ ^ ^-1.25


execute if score @s brown_wool.thunder_blade1 matches 1.. at @s as @e[type=!player,type=!item,type=!painting,type=!item_frame,distance=..1.5] run damage @s 14 lightning_bolt
execute if score @s brown_wool.thunder_blade2 matches 1.. at @s as @e[type=!player,type=!item,type=!painting,type=!item_frame,distance=..1.5] run damage @s 14 lightning_bolt

execute if score @s brown_wool.thunder_blade3 matches 1.. at @s as @e[type=!player,type=!item,type=!painting,type=!item_frame,distance=..1.6] run damage @s 18 lightning_bolt
execute if score @s brown_wool.thunder_blade4 matches 1.. at @s as @e[type=!player,type=!item,type=!painting,type=!item_frame,distance=..1.6] run damage @s 18 lightning_bolt

execute if score @s brown_wool.thunder_blade5 matches 0 run scoreboard players reset @s brown_wool.thunder_blade1
execute if score @s brown_wool.thunder_blade5 matches 0 run scoreboard players reset @s brown_wool.thunder_blade2
execute if score @s brown_wool.thunder_blade5 matches 0 run scoreboard players reset @s brown_wool.thunder_blade3
execute if score @s brown_wool.thunder_blade5 matches 0 run scoreboard players reset @s brown_wool.thunder_blade4



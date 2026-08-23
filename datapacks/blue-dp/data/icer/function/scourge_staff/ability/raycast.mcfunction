scoreboard players add @s icer.scourge_staff_raycast.distance 1
#雷射往前移動的距離加一

execute if score @s icer.scourge_staff_raycast.distance matches 2 run function icer:scourge_staff/ability/playsound
#播放音效

particle happy_villager ~ ~ ~ 0.1 0.1 0.1 0.05 3 force
particle minecraft:sneeze ~ ~ ~ 0.1 0.1 0.1 0.05 5 force
particle minecraft:trial_omen ~ ~ ~ 0.1 0.1 0.1 0 2 force
#光束特效

scoreboard players add @e[type=!#icer:cant_damage,tag=!icer.has_infected,distance=..2] icer.plague_count 2
tag @e[type=!#icer:cant_damage,tag=!icer.has_infected,distance=..2] add icer.has_infected
execute as @e[type=!#icer:cant_damage,distance=..2] run damage @s 2 magic
#將未感染的生物感染並給予一次傷害

execute positioned ^ ^ ^0.5 if score @s icer.scourge_staff_raycast.distance matches ..200 if block ~ ~ ~ air run function icer:scourge_staff/ability/raycast
execute if score @s icer.scourge_staff_raycast.distance matches 200.. run tag @e remove icer.has_infected
execute if score @s icer.scourge_staff_raycast.distance matches 200.. run kill @s
#偵測雷射往前移動次數，如果小於一定次數，則讓雷射往前走，並遞迴執行。如果大於一定次數，則刪除雷射標記
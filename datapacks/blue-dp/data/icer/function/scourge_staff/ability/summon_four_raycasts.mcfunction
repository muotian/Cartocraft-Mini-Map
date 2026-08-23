tag @s add icer.has_infected
#避免被二度感染

summon marker ~ ~ ~ {Tags:["icer.scourge_staff.raycast"]}
execute as @e[tag=icer.scourge_staff.raycast] at @s run tp @s ~ ~ ~ ~90 ~
summon marker ~ ~ ~ {Tags:["icer.scourge_staff.raycast"]}
execute as @e[tag=icer.scourge_staff.raycast] at @s run tp @s ~ ~ ~ ~90 ~
summon marker ~ ~ ~ {Tags:["icer.scourge_staff.raycast"]}
execute as @e[tag=icer.scourge_staff.raycast] at @s run tp @s ~ ~ ~ ~90 ~
summon marker ~ ~ ~ {Tags:["icer.scourge_staff.raycast"]}
execute as @e[tag=icer.scourge_staff.raycast] at @s run tp @s ~ ~ ~ ~90 ~
#召喚四個方向的雷射標記
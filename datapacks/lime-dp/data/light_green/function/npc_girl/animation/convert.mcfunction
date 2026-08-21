scoreboard players remove @s light_green.boss.animation 1

execute if score @s light_green.piglin_girl_type matches 1 run return run function light_green:npc_girl/animation/rotate
execute if score @s light_green.piglin_girl_type matches 2 run return run function light_green:npc_girl/animation/walk
execute if score @s light_green.piglin_girl_type matches 3 run return run function light_green:npc_girl/animation/tosit
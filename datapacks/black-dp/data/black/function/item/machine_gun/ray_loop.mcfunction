#by JaCkY99
#black

particle smoke ~ ~ ~ 0 0 0 0 0

scoreboard players add @s black.temp 1
execute positioned ~ ~-1 ~ as @e[type=#black:mob,distance=..1] run function black:item/machine_gun/ray_hit
execute unless block ^ ^ ^0.5 #black:transparent run playsound block.copper_bulb.break player @a ~ ~ ~ 1 1.5
execute unless block ^ ^ ^0.5 #black:transparent run particle block{block_state:"copper_block"} ~ ~ ~ 0.05 0.05 0.05 0 10
execute unless block ^ ^ ^0.5 #black:transparent run scoreboard players reset @s black.temp
execute if entity @s[scores={black.temp=..100}] positioned ^ ^ ^0.25 run function black:item/machine_gun/ray_loop
scoreboard players reset @s black.temp
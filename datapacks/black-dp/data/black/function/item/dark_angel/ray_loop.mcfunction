#by JaCkY99
#black

particle dust{color:[0,0,0],scale:0.75} ~ ~ ~ 0 0 0 0 0

scoreboard players add @s black.temp 1
execute positioned ~ ~-1 ~ if entity @e[type=#black:mob,distance=..1,limit=1] run scoreboard players reset @s black.temp
execute positioned ~ ~-1 ~ as @e[type=#black:mob,distance=..1] run function black:item/dark_angel/ray_hit
execute unless block ^ ^ ^0.5 #black:transparent run playsound block.copper_bulb.break player @a ~ ~ ~ 1 1.5
execute unless block ^ ^ ^0.5 #black:transparent run particle block{block_state:"netherite_block"} ~ ~ ~ 0.05 0.05 0.05 0 10
execute unless block ^ ^ ^0.5 #black:transparent run scoreboard players reset @s black.temp
execute if entity @s[scores={black.temp=..100}] positioned ^ ^ ^0.25 run function black:item/dark_angel/ray_loop
scoreboard players reset @s black.temp
#> assist:gateway/remove.core

data remove entity @s data
scoreboard players reset @s
tag @s remove assist.gateway.init
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:end_gateway

kill @e[tag=assist.gateway,tag=!assist.gateway.core,distance=0..5]

#> assist:gateway/remove.core

data remove entity @s data
scoreboard players reset @s
tag @s remove assist.gateway.init
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:end_gateway

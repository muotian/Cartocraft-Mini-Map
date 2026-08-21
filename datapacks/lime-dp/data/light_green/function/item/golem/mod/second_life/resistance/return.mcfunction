execute unless score @s light_green.second_life.resistance.time matches -1.. run return fail
execute store result storage light_green:golem_item resistance int 1 run scoreboard players get @s light_green.second_life.resistance
execute store result storage light_green:golem_item resistance_time int 1 run scoreboard players operation @s light_green.second_life.resistance.time /= $20 light_green.main.math
execute if score @s light_green.second_life.resistance.time matches -1 run data modify storage light_green:golem_item resistance_time set value "infinite"
execute if score @s light_green.second_life.resistance.icon matches 0 run data modify storage light_green:golem_item resistance__icon set value "false"
execute if score @s light_green.second_life.resistance.icon matches 1 run data modify storage light_green:golem_item resistance__icon set value "true"
function light_green:item/golem/mod/second_life/resistance/return2 with storage light_green:golem_item
function light_green:item/golem/mod/second_life/resistance/remove
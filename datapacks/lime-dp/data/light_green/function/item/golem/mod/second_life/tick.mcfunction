execute if score @s light_green.second_life.damage matches 1.. unless score @s light_green.second_life.apply matches 1 run function light_green:item/golem/mod/second_life/trigger
execute unless score @s light_green.second_life.apply matches 1 run effect give @s resistance 1 4 true
execute unless score @s light_green.second_life.apply matches 1 run stopsound @s player entity.player.hurt
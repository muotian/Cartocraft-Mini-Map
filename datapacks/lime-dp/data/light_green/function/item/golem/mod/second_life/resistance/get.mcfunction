scoreboard players reset @s light_green.second_life.resistance
execute unless data entity @s active_effects[{id:"minecraft:resistance"}].hidden_effect run return run function light_green:item/golem/mod/second_life/resistance/remove
scoreboard players set @s light_green.second_life.resistance 0
execute store result score @s light_green.second_life.resistance run data get entity @s active_effects[{id:"minecraft:resistance"}].hidden_effect.amplifier
execute if score @s light_green.second_life.resistance matches 0..3 store result score @s light_green.second_life.resistance.time run data get entity @s active_effects[{id:"minecraft:resistance"}].hidden_effect.duration
execute if score @s light_green.second_life.resistance matches 0..3 store result score @s light_green.second_life.resistance.icon run data get entity @s active_effects[{id:"minecraft:resistance"}].hidden_effect.show_icon
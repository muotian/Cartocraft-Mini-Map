execute store result score $resistance_time light_green.main.math run data get entity @s active_effects[{id:"minecraft:resistance"}].duration
execute if score $resistance_time light_green.main.math matches -1 run return run scoreboard players reset @s light_green.second_life.damage
execute if score $resistance_time light_green.main.math matches 25.. run return run scoreboard players reset @s light_green.second_life.damage
execute store result storage light_green:golem_item damage double 0.1 run scoreboard players get @s light_green.second_life.damage
scoreboard players operation $damage light_green.main.math = @s light_green.second_life.damage
scoreboard players operation $damage light_green.main.math /= $10 light_green.main.math
function light_green:item/golem/mod/second_life/resistance/get
effect clear @s resistance

execute if score @s light_green.second_life.resistance.time matches 1.. run function light_green:item/golem/mod/second_life/get_resistance
execute if score @s light_green.second_life.resistance.time matches -1 run function light_green:item/golem/mod/second_life/get_resistance

function light_green:item/golem/mod/second_life/damage_test/0

execute on attacker run tag @s add light_green.attacker

execute positioned 0.0 0.0 0.0 unless score $health light_green.main.math matches 1.. run function light_green:item/golem/mod/second_life/second_life

execute unless score @s light_green.second_life.apply matches 1 if entity @n[tag=light_green.attacker] run function light_green:item/golem/mod/second_life/damage with storage light_green:golem_item
execute unless score @s light_green.second_life.apply matches 1 unless entity @n[tag=light_green.attacker] run function light_green:item/golem/mod/second_life/damage_noattacker with storage light_green:golem_item

execute on attacker run tag @s remove light_green.attacker
kill @e[tag=light_green.damage_test.mannequin,limit=1,type=mannequin]
effect clear @s resistance
function light_green:item/golem/mod/second_life/resistance/return with storage light_green:golem_item
scoreboard players reset @s light_green.second_life.damage
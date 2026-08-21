advancement revoke @s only mini_light:weapons/candle/hit
scoreboard players operation @s mini_light.candle_hit %= $4 mini_light.candle_hit
scoreboard players add @s mini_light.candle_hit 1

tag @s add this
execute at @s as @e[predicate=mini_light:monster/hurttime] if function mini_light:weapons/check_attacker run tag @s add attacked

execute if score @s mini_light.candle_hit matches 1 run function mini_light:weapons/candle/one
execute if score @s mini_light.candle_hit matches 2 run function mini_light:weapons/candle/two
execute if score @s mini_light.candle_hit matches 3 run function mini_light:weapons/candle/three
execute if score @s mini_light.candle_hit matches 4 run function mini_light:weapons/candle/four

tag @e[tag=attacked] remove attacked
tag @s remove this
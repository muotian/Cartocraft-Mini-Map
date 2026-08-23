

scoreboard players add @s brown_wool.thunder_fruit 1

effect give @s strength 1 2 true
effect give @s speed 1 2 true
effect give @s haste 1 1 true
effect give @s jump_boost 1 1 true

execute if score @s brown_wool.thunder_fruit matches 200.. run effect give @s slowness 2 255 false
execute if score @s brown_wool.thunder_fruit matches 200.. run effect give @s blindness 2 0 false
execute if score @s brown_wool.thunder_fruit matches 200.. run tag @s remove brown_wool.thunder_fruit
execute if score @s brown_wool.thunder_fruit matches 200.. run scoreboard players reset @s brown_wool.thunder_fruit

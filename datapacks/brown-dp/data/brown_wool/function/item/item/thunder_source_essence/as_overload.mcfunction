

scoreboard players add @s brown_wool.thunder_source_essence 1

effect give @s strength 1 6 true
effect give @s speed 1 6 true
effect give @s haste 1 3 true
effect give @s jump_boost 1 3 true

execute if score @s brown_wool.thunder_source_essence matches 400.. run tag @s remove brown_wool.thunder_source_essence
execute if score @s brown_wool.thunder_source_essence matches 400.. run kill @s
execute if score @s brown_wool.thunder_source_essence matches 400.. run scoreboard players reset @s brown_wool.thunder_source_essence

# 執行者：右鍵的玩家
# 執行位置：同上

scoreboard players add @s brown_wool.lightning_crystal.overload2 1

effect give @s strength 1 6 true
effect give @s speed 1 6 true
effect give @s haste 1 3 true
effect give @s jump_boost 1 3 true

execute if score @s brown_wool.lightning_crystal.overload2 matches 300.. run effect give @s slowness 8 255 false
execute if score @s brown_wool.lightning_crystal.overload2 matches 300.. run effect give @s blindness 8 0 false
execute if score @s brown_wool.lightning_crystal.overload2 matches 300.. run tag @s remove brown_wool.lightning_crystal.overload2
execute if score @s brown_wool.lightning_crystal.overload2 matches 300.. run scoreboard players reset @s brown_wool.lightning_crystal.overload2

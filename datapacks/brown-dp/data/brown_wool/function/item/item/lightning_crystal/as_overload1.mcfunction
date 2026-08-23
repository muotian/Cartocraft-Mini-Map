# 執行者：右鍵的玩家
# 執行位置：同上

scoreboard players add @s brown_wool.lightning_crystal.overload1 1

effect give @s strength 1 4 true
effect give @s speed 1 4 true
effect give @s haste 1 2 true
effect give @s jump_boost 1 2 true

execute if score @s brown_wool.lightning_crystal.overload1 matches 300.. run effect give @s slowness 5 255 false
execute if score @s brown_wool.lightning_crystal.overload1 matches 300.. run effect give @s blindness 5 0 false
execute if score @s brown_wool.lightning_crystal.overload1 matches 300.. run tag @s remove brown_wool.lightning_crystal.overload1
execute if score @s brown_wool.lightning_crystal.overload1 matches 300.. run scoreboard players reset @s brown_wool.lightning_crystal.overload1

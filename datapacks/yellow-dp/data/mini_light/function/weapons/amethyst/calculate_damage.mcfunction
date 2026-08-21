# 執行者是玩家或圖騰
scoreboard players set $damage mini_light.damage 10
# 計算發光生物
execute as @e[predicate=mini_light:weapons/glowing,distance=..30] run scoreboard players add $damage mini_light.damage 20

execute store result storage mini_light:weapons/damage value.damage float 0.1 run scoreboard players get $damage mini_light.damage
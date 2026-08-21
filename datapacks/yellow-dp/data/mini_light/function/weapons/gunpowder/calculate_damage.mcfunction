# 執行者是玩家或圖騰、或鬼魂
scoreboard players set $damage mini_light.damage 40

execute if entity @s[type=creeper,tag=mini_light.gunpowder_ghost] run scoreboard players operation $damage mini_light.damage += @s mini_light.ghost_damage

execute store result storage mini_light:weapons/damage value.damage float 0.1 run scoreboard players get $damage mini_light.damage
execute store result storage light_green:boss agony int 1 run scoreboard players get @s light_green.agony
title @s subtitle [{"atlas":"gui",sprite:"hud/heart/full",color:"dark_purple"},{"text":"-"},{score:{name:"@s",objective:"light_green.agony"}}]
title @s times 0t 10t 5t
title @s title ""
execute if entity @s[tag=light_green.agony.by_player] unless score @s light_green.agony matches 100.. run function light_green:mob/boss/piglin_girl/agony/damage/2 with storage light_green:boss
execute if entity @s[tag=light_green.agony.by_player] if score @s light_green.agony matches 100.. run function light_green:mob/boss/piglin_girl/agony/damage/2_100 with storage light_green:boss
execute unless entity @s[tag=light_green.agony.by_player] run function light_green:mob/boss/piglin_girl/agony/damage/1 with storage light_green:boss
tag @s remove light_green.agony_weaken
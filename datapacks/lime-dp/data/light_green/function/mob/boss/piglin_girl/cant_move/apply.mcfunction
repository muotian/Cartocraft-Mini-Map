scoreboard players set @s light_green.cant_move 40
title @s subtitle [{"text":"\ue004",font:"light_green:custom",color:"white"}]
title @s times 0t 37t 5t
title @s title ""
attribute @s movement_speed modifier add light_green:cant_move -100 add_value
attribute @s jump_strength modifier add light_green:cant_move -100 add_value
attribute @s gravity modifier add light_green:cant_move 1 add_value
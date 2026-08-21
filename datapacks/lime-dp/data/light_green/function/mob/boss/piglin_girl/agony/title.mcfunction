scoreboard players add @s light_green.agony 1
execute if entity @s[tag=light_green.agony_weaken] run scoreboard players add @s light_green.agony 1
title @s subtitle [{"text":"\ue003",font:"light_green:custom",color:"white"},{"text":" ",font:"default"},{score:{name:"@s",objective:"light_green.agony"},color:"dark_purple",font:"default"}]
execute if entity @s[tag=light_green.agony_weaken] run title @s subtitle [{"text":"\ue003",font:"light_green:custom",color:"dark_red"},{"text":" ",font:"default"},{score:{name:"@s",objective:"light_green.agony"},color:"dark_purple",font:"default"}]
title @s times 0t 10t 5t
title @s title ""
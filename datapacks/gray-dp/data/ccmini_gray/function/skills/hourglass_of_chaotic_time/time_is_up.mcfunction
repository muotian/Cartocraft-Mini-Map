#持續時間結束後的效果
scoreboard players reset @s gray.hourglass_timer
damage @s 1 generic_kill
effect give @s weakness 2 0 false

#音效的其中一部份，因為跟結束同時發生，所以搬來這裡執行
title @s times 0 2 0
title @s title {"text":"\uE004","font":"minecraft:gray_area"}
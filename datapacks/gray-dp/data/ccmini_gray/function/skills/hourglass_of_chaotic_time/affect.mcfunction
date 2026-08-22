#觸發時受到的效果
effect give @s minecraft:instant_health 1 0 true
effect give @s minecraft:strength 3 0 false

#音效的其中一部份，因為跟觸發時同時發生，所以搬來這裡執行
playsound minecraft:block.stone_button.click_on player @s ~ ~ ~ 1 1
title @s times 0 3 0
title @s title {"text":"\uE001","font":"minecraft:gray_area"}

#計算持續時間與cd
scoreboard players set @s gray.hourglass_timer 60
scoreboard players set @s gray.hourglass_cd 460
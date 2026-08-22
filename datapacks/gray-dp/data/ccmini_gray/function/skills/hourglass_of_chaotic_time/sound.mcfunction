#執行效果期間音效與畫面顯示，開頭與結尾搬到affect與time is up
title @s times 0 3 0
execute if score @s gray.hourglass_timer matches 50 run playsound minecraft:block.stone_button.click_on player @s ~ ~ ~ 1 0
execute if score @s gray.hourglass_timer matches 40 run function ccmini_gray:skills/hourglass_of_chaotic_time/t40
execute if score @s gray.hourglass_timer matches 30 run playsound minecraft:block.stone_button.click_on player @s ~ ~ ~ 1 0
execute if score @s gray.hourglass_timer matches 20 run function ccmini_gray:skills/hourglass_of_chaotic_time/t20
execute if score @s gray.hourglass_timer matches 10 run playsound minecraft:block.stone_button.click_on player @s ~ ~ ~ 1 0

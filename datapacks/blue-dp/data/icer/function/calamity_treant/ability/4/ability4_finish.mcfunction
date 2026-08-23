tag @s remove icer.using_ability4
tag @s add icer.standing
#將狀態標籤換成站立

data merge entity @s {NoAI:0b}
#將boss解除定身

scoreboard players reset @s icer.calamity_treant.ability4.frame
#重製動畫持續時間
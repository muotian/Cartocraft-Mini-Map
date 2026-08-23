tag @s remove icer.using_ability6.catched
tag @s add icer.standing
#將狀態標籤換成站立

data merge entity @s {NoAI:0b}
data merge entity @s {Invulnerable:0b}
#將boss解除定身

scoreboard players reset @s icer.calamity_treant.ability6_catch.frame
#重製動畫持續時間

tag @a remove icer.catched
#移除被抓到的玩家標籤

kill @e[tag=icer.ability6_ride]
#清除控制玩家用的坐騎
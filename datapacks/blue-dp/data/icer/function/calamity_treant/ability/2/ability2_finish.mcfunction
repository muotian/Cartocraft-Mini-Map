tag @s remove icer.using_ability2
tag @s add icer.ability2_finish
#將狀態標籤換成已使用完技能

execute as @n[tag=aj.calamity_treant.root] run function animated_java:calamity_treant/animations/calamity_treant_ability2_finish/play
#播放技能結尾動畫

scoreboard players reset @s icer.calamity_treant.ability2.frame
#重製動畫持續時間

data merge entity @s {Invulnerable:0b}
tag @s remove icer.using_ability3
tag @s add icer.ability3_finish
#將狀態標籤換成已使用完技能

execute as @n[tag=aj.calamity_treant.root] run function animated_java:calamity_treant/animations/calamity_treant_ability3_finish/play
#播放技能結尾動畫

scoreboard players reset @s icer.calamity_treant.ability3.frame
#重製動畫持續時間
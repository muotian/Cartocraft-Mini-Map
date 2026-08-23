scoreboard players add @s icer.calamity_treant.ability4.frame 1
#技能持續時間加一

execute if score @s icer.calamity_treant.ability4.frame matches 26 run function icer:calamity_treant/ability/4/summon_endermite
#召喚終界螨

execute if score @s icer.calamity_treant.ability4.frame matches 59.. run function icer:calamity_treant/ability/4/ability4_finish
#結束動畫播放
scoreboard players add @s icer.calamity_treant.ability6.frame 1
#蓄力動畫持續時間加一

tp @s ~ ~ ~ facing entity @p
#蓄力時面向玩家

execute if score @s icer.calamity_treant.ability6.frame matches 20 run function icer:calamity_treant/ability/6/test
#偵測玩家是否被抓到
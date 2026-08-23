scoreboard players add @s icer.calamity_treant.ability3.frame 1
#技能持續時間加一

execute if score @s icer.calamity_treant.ability3.frame matches 30 facing entity @p feet run tp @s ~ ~ ~ ~ 0
#技能中間再調整一次衝刺方向

execute if score @s icer.calamity_treant.ability3.frame matches 40 run function icer:calamity_treant/ability/3/cut
execute if score @s icer.calamity_treant.ability3.frame matches 40 run playsound entity.player.attack.sweep ambient @a ~ ~ ~
execute if score @s icer.calamity_treant.ability3.frame matches 41 run function icer:calamity_treant/ability/3/ability3_finish
#動畫播放完後往前衝刺展擊然後播放收尾動畫

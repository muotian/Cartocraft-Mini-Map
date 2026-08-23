scoreboard players add @s icer.calamity_treant_ability3.distance 1
#雷射往前移動的距離加一

particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0.01 1 force
#產生特效

execute as @a[distance=..1.5] run damage @s 10 mob_attack by @n[tag=icer.calamity_treant]
#造成傷害

effect give @a[distance=..1.5] slowness 3 3 true
#緩速

execute if score @s icer.calamity_treant_ability3.distance matches 2.. run tp @s ^ ^ ^0.1
#往前傳送

execute positioned ^ ^ ^0.1 if score @s icer.calamity_treant_ability3.distance matches ..200 if block ^ ^ ^0.1 air run function icer:calamity_treant/ability/3/cut
execute if score @s icer.calamity_treant_ability3.distance matches 200.. run scoreboard players reset @s icer.calamity_treant_ability3.distance
execute unless block ^ ^ ^1 air run scoreboard players reset @s icer.calamity_treant_ability3.distance
#偵測雷射往前移動次數，如果小於一定次數，則讓boss往前走，並遞迴執行

scoreboard players add @s icer.plague_count 1
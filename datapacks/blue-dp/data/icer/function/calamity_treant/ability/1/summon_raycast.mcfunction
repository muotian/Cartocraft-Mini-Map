scoreboard players add @s icer.calamity_treant.ability1.distance 1
#雷射往前移動的距離加一

particle happy_villager ~ ~ ~ 1 1 1 0.2 100 force
particle flame ~ ~ ~ 0.3 0.3 0.3 0.01 10 force
particle explosion ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
particle sonic_boom ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
#雷射特效

execute as @a[distance=..3] run damage @s 3 magic
#造成傷害

scoreboard players add @a[distance=..3] icer.plague_count 1
#施加一層瘟疫

effect give @a[distance=..3] slowness 3 3 true
#給予緩速效果

execute positioned ~ ~1 ~ if score @s icer.calamity_treant.ability1.distance matches ..40 if block ~ ~ ~ air run function icer:calamity_treant/ability/1/summon_raycast
#偵測雷射往前移動次數，如果小於一定次數，則讓雷射往前走，並遞迴執行
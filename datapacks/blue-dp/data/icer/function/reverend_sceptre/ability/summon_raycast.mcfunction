scoreboard players add @s icer.reverend_sceptre_raycast.distance 1
#雷射往前移動的距離加一

particle end_rod ~ ~ ~ 0.3 0.3 0.3 0.2 4 force
particle flame ~ ~ ~ 0.1 0.1 0.1 0.01 4 force
particle explosion ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
particle sonic_boom ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
#雷射特效

damage @n[type=!#icer:cant_damage,distance=..3] 3 magic
#造成傷害

effect give @n[type=!#icer:cant_damage,distance=..3] slowness 3 255 true
#給予緩速效果

execute positioned ^ ^ ^1 if score @s icer.reverend_sceptre_raycast.distance matches ..100 if block ~ ~ ~ air run function icer:reverend_sceptre/ability/summon_raycast
##偵測雷射往前移動次數，如果小於一定次數，則讓雷射往前走，並遞迴執行
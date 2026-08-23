scoreboard players add @s icer.reverend_sceptre_raycast.distance 1
#將雷射往前移動的次數加一

damage @n[type=!#icer:cant_damage,distance=..3] 3 magic
#對半徑三格範圍內實體造成傷害

execute positioned ^ ^ ^1 if score @s icer.reverend_sceptre_raycast.distance matches ..100 if block ~ ~ ~ air run function icer:reverend_sceptre/ability/raycast_damage
#偵測雷射往前移動次數，如果小於一定次數，則讓雷射往前走，並遞迴執行
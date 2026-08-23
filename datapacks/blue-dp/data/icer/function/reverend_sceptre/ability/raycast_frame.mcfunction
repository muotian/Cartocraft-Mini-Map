scoreboard players add @s icer.reverend_sceptre_raycast.frame 1
#雷射已持續的時間加一

execute if score @s icer.reverend_sceptre_raycast.frame matches 2 run function icer:reverend_sceptre/ability/summon_raycast
#生成特效和基礎效果

execute if score @s icer.reverend_sceptre_raycast.frame matches 10 run function icer:reverend_sceptre/ability/raycast_damage
execute if score @s icer.reverend_sceptre_raycast.frame matches 20 run function icer:reverend_sceptre/ability/raycast_damage
execute if score @s icer.reverend_sceptre_raycast.frame matches 30 run function icer:reverend_sceptre/ability/raycast_damage
execute if score @s icer.reverend_sceptre_raycast.frame matches 40 run function icer:reverend_sceptre/ability/raycast_damage
execute if score @s icer.reverend_sceptre_raycast.frame matches 50 run function icer:reverend_sceptre/ability/raycast_damage
#後續持續傷害

execute if score @s icer.reverend_sceptre_raycast.frame matches 60 run kill @e[tag=icer.reverend_sceptre.raycast]
#時間到後清除雷射標記

scoreboard players reset @s icer.reverend_sceptre_raycast.distance
#將雷射往前移動的次數歸零以便重複執行
scoreboard players add @s icer.calamity_treant.ability1.frame 1
#將雷射標記存在的時間加一

execute positioned ~ ~-1 ~ if score @s icer.calamity_treant.ability1.frame matches 2..35 run function icer:calamity_treant/ability/1/particle_circle
#產生雷射前先產生技能警示圈

execute if score @s icer.calamity_treant.ability1.frame matches 34 run function icer:calamity_treant/ability/1/summon_raycast
execute if score @s icer.calamity_treant.ability1.frame matches 34 run playsound entity.lightning_bolt.impact ambient @a ~ ~ ~
execute if score @s icer.calamity_treant.ability1.frame matches 35 run kill @s
#產生雷射並清除標記
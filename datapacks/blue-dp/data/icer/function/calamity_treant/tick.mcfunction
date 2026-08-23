tp @n[tag=aj.calamity_treant.root] ~ ~ ~ ~ 0
#將aj模型tp到自己身上

execute store result score @s icer.x_motion run data get entity @s Motion[0] 1000
execute store result score @s icer.y_motion run data get entity @s Motion[2] 1000
#將自己的motion貼到記分板上，乘1000倍避免小數被約分

execute if score @s icer.x_motion matches 0 if score @s icer.y_motion matches 0 if entity @s[tag=icer.moving] run function icer:calamity_treant/animation/change_to_standing
#如果自己沒有在移動，則切換成站立狀態

execute unless score @s icer.x_motion matches 0 if entity @s[tag=icer.standing] run function icer:calamity_treant/animation/change_to_moving
execute unless score @s icer.y_motion matches 0 if entity @s[tag=icer.standing] run function icer:calamity_treant/animation/change_to_moving
#如果有在移動，則切換成移動狀態

execute store result bossbar icer.calamity_treant value run scoreboard players get @s icer.calamity_treant.health
execute store result score @s icer.calamity_treant.health run data get entity @s Health
#將自己的血量貼到記分板和血條上

execute if data entity @s {HurtTime:10s} run playsound entity.allay.hurt ambient @a ~ ~ ~
#如果受傷則播放音效

execute if entity @s[tag=!icer.need_mana] if score @s icer.boss_mana matches ..0 run function icer:calamity_treant/test_mana
execute if entity @s[tag=icer.need_mana] if score @s icer.boss_mana matches 1.. run tag @s remove icer.need_mana
#偵測boss是否需要魔力

execute if score @n[tag=aj.calamity_treant.root] aj.calamity_treant_ability1.frame matches 79 run function icer:calamity_treant/ability/1/ability1_finish
#技能執行完後換回待機狀態

execute if score @s icer.plague_count matches 1.. run function icer:plague/reset_plague
#boss免疫瘟疫效果

execute if score @n[tag=aj.calamity_treant.root] aj.calamity_treant_ability2_finish.frame matches 2 run function icer:calamity_treant/ability/2/particle_circle
#產生特效

execute if score @n[tag=aj.calamity_treant.root] aj.calamity_treant_ability2_finish.frame matches 29 run function icer:calamity_treant/ability/2/reset_to_standing
execute if score @n[tag=aj.calamity_treant.root] aj.calamity_treant_ability3_finish.frame matches 29 run function icer:calamity_treant/ability/3/reset_to_standing
execute if score @n[tag=aj.calamity_treant.root] aj.calamity_treant_ability6_fail.frame matches 9 run function icer:calamity_treant/ability/6/reset_to_standing_fail
#在收尾動畫結束時切換boss狀態

execute if score @n[tag=aj.calamity_treant.root] aj.calamity_treant_ability5.frame matches ..30 facing entity @p feet run tp @s ~ ~ ~ ~ 0
execute if score @n[tag=aj.calamity_treant.root] aj.calamity_treant_ability5.frame matches 34 run tp @s ^ ^ ^1.5
execute if score @n[tag=aj.calamity_treant.root] aj.calamity_treant_ability5.frame matches 35 positioned ^ ^ ^0.5 as @a[distance=..2] run function icer:calamity_treant/ability/5/damage
execute if score @n[tag=aj.calamity_treant.root] aj.calamity_treant_ability5.frame matches 49 run function icer:calamity_treant/ability/5/ability5_finish
#技能5的函數

execute if entity @s[tag=icer.using_ability6] run function icer:calamity_treant/ability/6/test_frame
execute if entity @s[tag=icer.using_ability6.catched] run function icer:calamity_treant/ability/6/catched_frame
#偵測使用技能6的boss目前進入了哪個階段

execute if score @s icer.boss_mana matches 1.. run function icer:calamity_treant/finite_state_machine/test

execute unless entity @a[distance=..50] run function icer:calamity_treant/dead/kill_boss
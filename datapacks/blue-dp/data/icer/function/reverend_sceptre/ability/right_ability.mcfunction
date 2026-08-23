advancement revoke @s only icer:used_reverend_sceptre
#清除成就以便下次偵測

function icer:reverend_sceptre/ability/stop_using_reverend_sceptre
tag @s add icer.reverend_sceptre_right_animation
execute as @e[tag=aj.reverend_sceptre.root] at @s if score @s aj.id = @p[tag=icer.reverend_sceptre_right_animation] aj.id run function animated_java:reverend_sceptre/animations/reverend_sceptre_right_ability/play
tag @s remove icer.reverend_sceptre_right_animation
#中斷蓄力並接上技能執行動畫

playsound entity.experience_orb.pickup ambient @a ~ ~ ~
playsound entity.lightning_bolt.thunder ambient @a ~ ~ ~
playsound entity.lightning_bolt.impact ambient @a ~ ~ ~
#產生音效

summon marker ~ ~ ~ {Tags:["icer.reverend_sceptre.raycast"]}
#召喚雷射標記

tag @n[tag=icer.reverend_sceptre.raycast,tag=!icer.summon_raycast] add icer.summon_raycast
execute anchored eyes run tp @n[tag=icer.summon_raycast] ^ ^ ^2 ~ ~
tag @n[tag=icer.summon_raycast] remove icer.summon_raycast
#將雷射傳送到玩家眼前並面向前方

item modify entity @s weapon.mainhand icer:reset_1
item modify entity @s weapon.mainhand icer:reset_2
#刷新道具狀態避免被消耗
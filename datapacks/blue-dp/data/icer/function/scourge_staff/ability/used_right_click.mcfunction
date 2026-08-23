advancement revoke @s only icer:used_scourge_staff
#清除成就以便下次偵測

function icer:scourge_staff/ability/stop_using_scourge_staff
tag @s add icer.scourge_staff_right_animation
execute as @e[tag=aj.scourge_staff.root] at @s if score @s aj.id = @p[tag=icer.scourge_staff_right_animation] aj.id run function animated_java:scourge_staff/animations/scourge_staff_used_right_click/play
tag @s remove icer.scourge_staff_right_animation
#中斷蓄力並接上技能執行動畫

playsound entity.experience_orb.pickup ambient @a ~ ~ ~
#產生音效

tag @e[type=!#icer:cant_damage,distance=..20,scores={icer.plague_count=1..}] add icer.infected_by_scourge_staff
execute as @e[tag=icer.infected_by_scourge_staff] at @s run function icer:scourge_staff/ability/right_ability
#執行技能函數

item modify entity @s weapon.mainhand icer:reset_1
item modify entity @s weapon.mainhand icer:reset_2
#刷新道具狀態避免被消耗
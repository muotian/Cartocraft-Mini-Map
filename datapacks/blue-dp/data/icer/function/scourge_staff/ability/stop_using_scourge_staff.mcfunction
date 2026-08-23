tag @s remove icer.using_scourge_staff
#將正在長按右鍵的標籤清除

scoreboard players set @s icer.using_scourge_staff 0
scoreboard players set @s icer.using_scourge_staff_lasttick 0
#重製蓄力記分板

tag @s add icer.used_scourge_staff
execute as @e[tag=aj.scourge_staff.root] at @s if score @s aj.id = @p[tag=icer.used_scourge_staff] aj.id run function animated_java:scourge_staff/animations/scourge_staff_using_right_click/stop
tag @s remove icer.used_scourge_staff
#打斷與該玩家綁定的aj實體的蓄力動畫

stopsound @a ambient entity.creeper.primed
#打斷蓄力音效
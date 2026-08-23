advancement revoke @s only icer:using_scourge_staff
#清除成就以便重複偵測

scoreboard players add @s icer.using_scourge_staff 1
#將蓄力時長加一

tag @s add icer.use_scourge_staff
execute if entity @s[tag=!icer.using_scourge_staff] as @e[tag=aj.scourge_staff.root] at @s if score @s aj.id = @p[tag=icer.use_scourge_staff] aj.id run function animated_java:scourge_staff/animations/scourge_staff_using_right_click/play
tag @s remove icer.use_scourge_staff
#讓與該玩家綁定的aj實體播放蓄力動畫

execute as @n[tag=icer.scourge_staff_gemstone] at @s run particle happy_villager ~ ~ ~ 0.2 0.2 0.2 2 1 force
execute as @e[type=!#icer:cant_damage,distance=..20,scores={icer.plague_count=1..}] at @s run particle item_slime ~ ~1 ~ 0.5 0.5 0.5 0.1 3 force
#產生粒子特效

execute if entity @s[tag=!icer.using_scourge_staff] run playsound block.beacon.activate ambient @a ~ ~ ~ 5
#播放蓄力音效

tag @s[tag=!icer.using_scourge_staff] add icer.using_scourge_staff
#給予正在長按右鍵的標籤
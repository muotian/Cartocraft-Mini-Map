advancement revoke @s only icer:using_reverend_sceptre
#清除成就以便重複偵測

scoreboard players add @s icer.using_reverend_sceptre 1
#將蓄力時長加一

tag @s add icer.use_reverend_sceptre
execute if entity @s[tag=!icer.using_reverend_sceptre] as @e[tag=aj.reverend_sceptre.root] at @s if score @s aj.id = @p[tag=icer.use_reverend_sceptre] aj.id run function animated_java:reverend_sceptre/animations/reverend_sceptre_right_click/play
tag @s remove icer.use_reverend_sceptre
#讓與該玩家綁定的aj實體播放蓄力動畫

particle flame ^ ^1.5 ^2.2 0.1 0.1 0.1 0.01 1 force
#產生粒子特效

execute if entity @s[tag=!icer.using_reverend_sceptre] run playsound block.beacon.activate ambient @a ~ ~ ~ 5
#播放蓄力音效

tag @s[tag=!icer.using_reverend_sceptre] add icer.using_reverend_sceptre
#給予正在長按右鍵的標籤
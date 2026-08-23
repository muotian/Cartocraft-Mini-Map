tag @s remove icer.using_knightsword
#將正在長按右鍵的標籤拿掉

scoreboard players set @s icer.using_knightsword 0
scoreboard players set @s icer.using_knightsword_lasttick 0
#將蓄力時長偵測的記分板歸零

tag @s add icer.used_knightsword
execute as @e[tag=aj.knightsword.root] at @s if score @s aj.id = @p[tag=icer.used_knightsword] aj.id run function animated_java:knightsword/animations/using_knight_sword/stop
tag @s remove icer.used_knightsword
#將與該玩家綁定的aj的蓄力動畫中斷
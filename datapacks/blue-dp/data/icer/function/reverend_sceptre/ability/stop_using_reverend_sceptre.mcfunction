tag @s remove icer.using_reverend_sceptre
#將正在長按右鍵的標籤清除

scoreboard players set @s icer.using_reverend_sceptre 0
scoreboard players set @s icer.using_reverend_sceptre_lasttick 0
#重製蓄力記分板

tag @s add icer.used_reverend_sceptre
execute as @e[tag=aj.reverend_sceptre.root] at @s if score @s aj.id = @p[tag=icer.used_reverend_sceptre] aj.id run function animated_java:reverend_sceptre/animations/reverend_sceptre_right_click/stop
tag @s remove icer.used_reverend_sceptre
#打斷與該玩家綁定的aj實體的蓄力動畫

stopsound @a ambient entity.creeper.primed
#打斷蓄力音效
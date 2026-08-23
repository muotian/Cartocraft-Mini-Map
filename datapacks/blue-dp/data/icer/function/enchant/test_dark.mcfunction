execute unless entity @s[tag=icer.dark.has_setup] at @s run function icer:enchant/setup_dark
#如果道具實體還沒經過基礎設置則先設置基礎資料

data remove entity @s Motion
#拔除動量避免道具飄走

tag @s add icer.dark.need_tp_interaction
execute as @e[tag=icer.dark.interaction] at @n[tag=icer.dark.need_tp_interaction] if score @s icer.dark_interaction.id = @n[tag=icer.dark.need_tp_interaction] icer.dark.id run tp @s ~ ~0.15 ~
tag @s remove icer.dark.need_tp_interaction
#將互相綁定的道具跟互動實體傳送到一起

particle portal ~ ~ ~ 0.2 0.2 0.2 0.05 1 force
#生成粒子效果
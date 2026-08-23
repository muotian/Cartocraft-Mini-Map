execute unless entity @s[tag=icer.light.has_setup] at @s run function icer:enchant/setup_light
#如果道具實體還沒經過基礎設置則先設置基礎資料

data remove entity @s Motion
#拔除動量避免道具飄走

tag @s add icer.light.need_tp_interaction
execute as @e[tag=icer.light.interaction] at @n[tag=icer.light.need_tp_interaction] if score @s icer.light_interaction.id = @n[tag=icer.light.need_tp_interaction] icer.light.id run tp @s ~ ~0.15 ~
tag @s remove icer.light.need_tp_interaction
#將互相綁定的道具跟互動實體傳送到一起

particle end_rod ~ ~0.5 ~ 0.3 0.3 0.3 0.01 1 force
#生成粒子效果
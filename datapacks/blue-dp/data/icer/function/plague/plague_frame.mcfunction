scoreboard players add @s icer.plague_frame 1
#瘟疫效果持續時間加一

execute if score @s icer.plague_frame matches 20 run effect give @s slowness 9 2 true
#緩速實體

particle minecraft:item_slime ~ ~1 ~ 0.8 0.8 0.8 0.1 3 force
#產生特效

execute if score @s[type=player] icer.plague_frame matches 1 if items entity @s armor.head *[custom_data~{icer.plague_doctor_mask:1b}] run function icer:plague/random
execute if score @s icer.plague_frame matches 80 run damage @s 1 magic
execute if score @s icer.plague_frame matches 100 run damage @s 1 magic
execute if score @s icer.plague_frame matches 120 run damage @s 1 magic
execute if score @s icer.plague_frame matches 140 run damage @s 1 magic
execute if score @s icer.plague_frame matches 150 run damage @s 1 magic
execute if score @s icer.plague_frame matches 160 run damage @s 2 magic
execute if score @s icer.plague_frame matches 170 run damage @s 2 magic
execute if score @s icer.plague_frame matches 180 run damage @s 2 magic
execute if score @s icer.plague_frame matches 190 run damage @s 2 magic
#每過一段時間造成傷害

execute if score @s icer.plague_frame matches 200.. store result storage minecraft:icer.plague_damage damage int 1 run scoreboard players get @s icer.plague_count
execute if score @s icer.plague_frame matches 200.. run function icer:plague/plague_break_out with storage icer.plague_damage
#最後瘟疫爆發並傳染
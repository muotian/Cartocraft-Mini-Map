# 執行者、執行位置是玩家
scoreboard players set @s c.heal 20000
function custom_heal:apply_heal
scoreboard players reset @s c.heal
scoreboard players add @s mini_light.collected_soul 1
clear @s prismarine_crystals[custom_data~{soul_item:1b}] 1
execute if score @s mini_light.collected_soul matches 8 run function mini_light:weapons/candle/soul/magic_sword
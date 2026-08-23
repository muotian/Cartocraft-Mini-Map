execute if score @s icer.plague_count matches 1.. run effect give @s slowness 5 5 true
execute if score @s icer.plague_count matches 3.. run effect give @s poison 5 5 true
execute if score @s icer.plague_count matches 5.. positioned ~ ~1 ~ run function icer:scourge_staff/ability/summon_four_raycasts
#根據不同層數造成不同效果

execute store result storage minecraft:icer.plague_damage damage int 1 run scoreboard players get @s icer.plague_count
function icer:plague/plague_break_out with storage icer.plague_damage
#瘟疫爆發

tag @s remove icer.infected_by_scourge_staff
#拿掉標記
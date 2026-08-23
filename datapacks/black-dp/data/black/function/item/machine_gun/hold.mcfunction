#by JaCkY99
#black

execute if score @s black.machine_gun_reload matches 1.. run scoreboard players reset @s black.machine_gun_reload

execute if score @s black.sneak matches 1.. if items entity @s weapon carrot_on_a_stick[minecraft:custom_data~{black:{machine_gun_sneak:0b}}] run function black:item/machine_gun/sneak
execute unless score @s black.sneak matches 1.. if items entity @s weapon carrot_on_a_stick[minecraft:custom_data~{black:{machine_gun_sneak:1b}}] run function black:item/machine_gun/not_sneak
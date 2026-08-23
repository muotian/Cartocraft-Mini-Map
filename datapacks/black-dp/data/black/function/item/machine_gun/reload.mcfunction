#by JaCkY99
#black

execute store result score #black.temp black.temp run data get entity @s equipment.offhand.components."minecraft:custom_data".black.machine_gun_ammo
scoreboard players remove #black.temp black.temp 8
scoreboard players operation #black.temp black.temp *= #black.-1 black.temp
execute store result score @s black.temp run clear @s gunpowder 0
execute if score #black.temp black.temp > @s black.temp run scoreboard players operation #black.temp black.temp = @s black.temp

scoreboard players add @s black.machine_gun_reload 1
execute if score @s black.machine_gun_reload matches 5 run playsound block.copper_chest_oxidized.open player @a ~ ~ ~ 1 2
execute if score #black.temp black.temp matches 4.. if score @s black.machine_gun_reload matches 15 run playsound block.chest.locked player @a ~ ~ ~ 1 2
execute if score #black.temp black.temp matches 5.. if score @s black.machine_gun_reload matches 20 run playsound block.chest.locked player @a ~ ~ ~ 1 2
execute if score #black.temp black.temp matches 1.. if score @s black.machine_gun_reload matches 25 run playsound block.chest.locked player @a ~ ~ ~ 1 2
execute if score #black.temp black.temp matches 6.. if score @s black.machine_gun_reload matches 30 run playsound block.chest.locked player @a ~ ~ ~ 1 2
execute if score #black.temp black.temp matches 2.. if score @s black.machine_gun_reload matches 35 run playsound block.chest.locked player @a ~ ~ ~ 1 2
execute if score #black.temp black.temp matches 7.. if score @s black.machine_gun_reload matches 40 run playsound block.chest.locked player @a ~ ~ ~ 1 2
execute if score #black.temp black.temp matches 3.. if score @s black.machine_gun_reload matches 45 run playsound block.chest.locked player @a ~ ~ ~ 1 2
execute if score #black.temp black.temp matches 8 if score @s black.machine_gun_reload matches 50 run playsound block.chest.locked player @a ~ ~ ~ 1 2
execute if score @s black.machine_gun_reload matches 57 run playsound block.copper_chest_oxidized.close player @a ~ ~ ~ 1 1.5
execute if score @s black.machine_gun_reload matches 58..60 run playsound block.chest.locked player @a ~ ~ ~ 1 1.5
execute if score @s black.machine_gun_reload matches 60 run function black:item/machine_gun/reload_use

execute if score @s black.machine_gun_reload matches 1.. unless items entity @s weapon.offhand carrot_on_a_stick[minecraft:custom_data~{black:{machine_gun:1b}}] run scoreboard players reset @s black.machine_gun_reload
execute if items entity @s weapon.offhand carrot_on_a_stick[minecraft:custom_data~{black:{machine_gun_ammo:8}}] run scoreboard players reset @s black.machine_gun_reload
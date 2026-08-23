#by JaCkY99
#black

scoreboard players add @s black.dark_angel_reload 1
execute if score @s black.dark_angel_reload matches 5 run playsound block.iron_door.open player @a ~ ~ ~ 1 1.5
execute if score @s black.dark_angel_reload matches 15 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.5
execute if score @s black.dark_angel_reload matches 21..23 run playsound entity.dolphin.eat player @a ~ ~ ~ 1 1.5
execute if score @s black.dark_angel_reload matches 23 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.5
execute if score @s black.dark_angel_reload matches 25 run playsound block.iron_door.close player @a ~ ~ ~ 1 1.5
execute if score @s black.dark_angel_reload matches 37 run playsound block.copper_chest_oxidized.close player @a ~ ~ ~ 1 1.5
execute if score @s black.dark_angel_reload matches 38..40 run playsound block.chest.locked player @a ~ ~ ~ 1 1.5
execute if score @s black.dark_angel_reload matches 40 run function black:item/dark_angel/reload_use

execute if score @s black.dark_angel_reload matches 1.. unless items entity @s weapon.offhand carrot_on_a_stick[minecraft:custom_data~{black:{dark_angel:1b,dark_angel_ammo:0}}] run scoreboard players reset @s black.dark_angel_reload
execute store result score @s black.temp run clear @s gunpowder 0
execute unless score @s black.temp matches 18.. run scoreboard players reset @s black.dark_angel_reload
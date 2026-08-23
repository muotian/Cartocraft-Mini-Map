#by JaCkY99
#black

execute store result score #black.temp black.temp run data get entity @s SelectedItem.components."minecraft:custom_data".black.dark_angel_ammo
execute if score #black.temp black.temp matches 1.. unless score @s black.sneak matches 1.. positioned ~ ~1.5 ~ run function black:item/dark_angel/ray
execute if score #black.temp black.temp matches 1.. if score @s black.sneak matches 1.. positioned ~ ~1 ~ run function black:item/dark_angel/ray
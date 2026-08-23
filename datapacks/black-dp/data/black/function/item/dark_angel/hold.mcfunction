#by JaCkY99
#black

execute if score @s black.dark_angel_reload matches 1.. run scoreboard players reset @s black.dark_angel_reload

execute if score @s black.sneak matches 1.. if items entity @s weapon carrot_on_a_stick[minecraft:custom_data~{black:{dark_angel_sneak:0b}}] run function black:item/dark_angel/sneak
execute unless score @s black.sneak matches 1.. if items entity @s weapon carrot_on_a_stick[minecraft:custom_data~{black:{dark_angel_sneak:1b}}] run function black:item/dark_angel/not_sneak

execute if score @s black.sneak matches 1.. positioned ~ ~1 ~ positioned ^ ^ ^0.75 run function black:item/dark_angel/particle
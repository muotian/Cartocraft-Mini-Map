#by JaCkY99
#black

execute if items entity @s weapon *[custom_data~{black:{machine_gun:1b}}] unless score @s black.machine_gun_cd matches 1.. run function black:item/machine_gun/use
execute if items entity @s weapon *[custom_data~{black:{dark_angel:1b}}] unless score @s black.dark_angel_cd matches 1.. run function black:item/dark_angel/use
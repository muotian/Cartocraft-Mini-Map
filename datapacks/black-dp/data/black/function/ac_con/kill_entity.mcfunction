#by JaCkY99
#black

advancement revoke @s only black:kill_entity

execute if items entity @s weapon.mainhand diamond_sword[minecraft:custom_data~{black:{mheart:1b,mheart_lvl:5b}}] run function black:item/mheart/remove
execute if items entity @s weapon.mainhand diamond_sword[minecraft:custom_data~{black:{mheart:1b,mheart_lvl:4b}}] run function black:item/mheart/mheart4
execute if items entity @s weapon.mainhand diamond_sword[minecraft:custom_data~{black:{mheart:1b,mheart_lvl:3b}}] run function black:item/mheart/add
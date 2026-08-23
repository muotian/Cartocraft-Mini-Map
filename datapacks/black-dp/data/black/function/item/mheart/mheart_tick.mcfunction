#by JaCkY99
#black

execute if score @s black.mheart matches 1.. run scoreboard players add @s black.mheart_cd 1
execute unless items entity @s weapon.mainhand diamond_sword[minecraft:custom_data~{black:{mheart:1b,mheart_lvl:3b}}] if score @s black.mheart_cd matches 100.. if score @s black.mheart matches 1.. run function black:item/mheart/remove
execute if items entity @s weapon.mainhand diamond_sword[minecraft:custom_data~{black:{mheart:1b,mheart_lvl:3b}}] if score @s black.mheart_cd matches 200.. if score @s black.mheart matches 1.. run function black:item/mheart/remove

execute if score @s black.mheart_cd matches 20 run function black:item/mheart/sound
execute if score @s black.mheart_cd matches 40 run function black:item/mheart/sound
execute if score @s black.mheart_cd matches 60 run function black:item/mheart/sound
execute if score @s black.mheart_cd matches 80 run function black:item/mheart/sound
execute if score @s black.mheart_cd matches 100 run function black:item/mheart/sound
execute if score @s black.mheart_cd matches 120 run function black:item/mheart/sound
execute if score @s black.mheart_cd matches 140 run function black:item/mheart/sound
execute if score @s black.mheart_cd matches 160 run function black:item/mheart/sound
execute if score @s black.mheart_cd matches 180 run function black:item/mheart/sound
execute if score @s black.mheart_cd matches 200 run function black:item/mheart/sound
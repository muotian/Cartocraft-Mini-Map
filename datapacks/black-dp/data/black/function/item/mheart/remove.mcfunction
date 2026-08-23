#by JaCkY99
#black

playsound block.lava.extinguish player @s ~ ~ ~ 0.5 2

scoreboard players remove @s black.mheart 1

execute if score @s black.mheart matches ..2 run function black:item/mheart/change/mheart1
execute if score @s black.mheart matches 3..4 run function black:item/mheart/change/mheart2
execute if score @s black.mheart matches 5..6 run function black:item/mheart/change/mheart3
execute if score @s black.mheart matches 7..8 run function black:item/mheart/change/mheart4
execute if score @s black.mheart matches 9.. run function black:item/mheart/change/mheart5

scoreboard players set @s black.mheart_cd 0
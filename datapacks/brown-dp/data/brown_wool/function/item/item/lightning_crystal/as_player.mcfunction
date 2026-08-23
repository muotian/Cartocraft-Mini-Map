# 執行者：玩家
# 執行位置：同上



scoreboard players reset @s brown_wool.lightning_crystal
execute store result score @s brown_wool.lightning_crystal run clear @s amethyst_shard[custom_data={brown_wool.lightning_crystal:1}] 0


execute if score @s brown_wool.lightning_crystal matches 1.. at @s run function brown_wool:item/item/lightning_crystal/player6

execute if entity @s[tag=brown_wool.lightning_crystal1] at @s run function brown_wool:item/item/lightning_crystal/player2


execute if entity @s[tag=brown_wool.lightning_crystal2] at @s run function brown_wool:item/item/lightning_crystal/player3


execute if score @s brown_wool.lightning_crystal.death matches 1.. run function brown_wool:item/item/lightning_crystal/death


execute if score @s brown_wool.rock_thunder_armor.combination_cd matches 1.. at @s run function brown_wool:item/item/lightning_crystal/player4

execute if score @s brown_wool.spirit_wood_thunder_armor.combination_cd matches 1.. at @s run function brown_wool:item/item/lightning_crystal/player5



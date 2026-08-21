scoreboard players add @s light_green.main.math 1

execute if score @s light_green.main.math matches 1 if entity @s[tag=light_green.attack_range.spear.white] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_white1"
execute if score @s light_green.main.math matches 2 if entity @s[tag=light_green.attack_range.spear.white] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_white2"
execute if score @s light_green.main.math matches 3 if entity @s[tag=light_green.attack_range.spear.white] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_white3"
execute if score @s light_green.main.math matches 4 if entity @s[tag=light_green.attack_range.spear.white] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_white4"
execute if score @s light_green.main.math matches 5 if entity @s[tag=light_green.attack_range.spear.white] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_white5"

execute if score @s light_green.main.math matches 1 if entity @s[tag=light_green.attack_range.spear.gold] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_gold1"
execute if score @s light_green.main.math matches 2 if entity @s[tag=light_green.attack_range.spear.gold] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_gold2"
execute if score @s light_green.main.math matches 3 if entity @s[tag=light_green.attack_range.spear.gold] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_gold3"
execute if score @s light_green.main.math matches 4 if entity @s[tag=light_green.attack_range.spear.gold] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_gold4"
execute if score @s light_green.main.math matches 5 if entity @s[tag=light_green.attack_range.spear.gold] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_gold5"
execute if score @s light_green.main.math matches 6 if entity @s[tag=light_green.attack_range.spear.gold] run kill @s

execute if score @s light_green.main.math matches 1 if entity @s[tag=light_green.attack_range.spear_sweep.gold] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_sweep_gold1"
execute if score @s light_green.main.math matches 2 if entity @s[tag=light_green.attack_range.spear_sweep.gold] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_sweep_gold2"
execute if score @s light_green.main.math matches 3 if entity @s[tag=light_green.attack_range.spear_sweep.gold] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_sweep_gold3"
execute if score @s light_green.main.math matches 4 if entity @s[tag=light_green.attack_range.spear_sweep.gold] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_sweep_gold4"
execute if score @s light_green.main.math matches 5 if entity @s[tag=light_green.attack_range.spear_sweep.gold] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_sweep_gold5"

execute if entity @s[tag=light_green.attack_range.spear_sweep.gold,tag=light_green.from_player] run function light_green:item/piglin_girl/spear/swing/tick

execute if score @s light_green.main.math matches 1 if entity @s[tag=light_green.attack_range.spear_sweep.white] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_sweep_white1"
execute if score @s light_green.main.math matches 2 if entity @s[tag=light_green.attack_range.spear_sweep.white] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_sweep_white2"
execute if score @s light_green.main.math matches 3 if entity @s[tag=light_green.attack_range.spear_sweep.white] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_sweep_white3"
execute if score @s light_green.main.math matches 4 if entity @s[tag=light_green.attack_range.spear_sweep.white] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_sweep_white4"
execute if score @s light_green.main.math matches 5 if entity @s[tag=light_green.attack_range.spear_sweep.white] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_sweep_white5"

execute if score @s light_green.main.math matches 1 if entity @s[tag=light_green.attack_range.spear_sweep.white_end] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_sweep_white6"
execute if score @s light_green.main.math matches 2 if entity @s[tag=light_green.attack_range.spear_sweep.white_end] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_sweep_white7"
execute if score @s light_green.main.math matches 3 if entity @s[tag=light_green.attack_range.spear_sweep.white_end] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_sweep_white8"
execute if score @s light_green.main.math matches 4 if entity @s[tag=light_green.attack_range.spear_sweep.white_end] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_sweep_white9"
execute if score @s light_green.main.math matches 5 if entity @s[tag=light_green.attack_range.spear_sweep.white_end] run data modify entity @s item.components."minecraft:item_model" set value "light_green:attack/spear_sweep_white10"

execute if entity @s[tag=light_green.attack_range.spear_sweep.white_end,tag=light_green.from_player] run function light_green:item/big_hoglin/sword/swing/tick


execute if score @s light_green.main.math matches 7.. run kill @s
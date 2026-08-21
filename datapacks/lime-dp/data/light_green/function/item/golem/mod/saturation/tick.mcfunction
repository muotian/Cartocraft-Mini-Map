execute store result score $mod_level light_green.main.math run data get storage light_green:golem_item contents.components."minecraft:custom_data"."light_green:golem_armor_mod_level"


execute if score @s light_green.food matches ..7 run effect give @s saturation 1 0 true

execute unless score $mod_level light_green.main.math matches 2.. run return fail

execute if score @s light_green.eat matches 0.. run effect give @s saturation 1 1 true

execute unless score $mod_level light_green.main.math matches 3.. run return fail

execute if score @s light_green.eating matches 0.. run effect give @s resistance 1 1 true

item modify entity @s armor.chest light_green:hunger_add

execute if score @s light_green.eat matches 0.. run function light_green:item/golem/mod/saturation/heal/0
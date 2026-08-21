item modify entity @s armor.chest light_green:hunger_clear


execute unless score $mod_equip light_green.main.math matches 1 run scoreboard players reset $absorption light_green.main.math
execute unless score $mod_equip light_green.main.math matches 1 run scoreboard players reset $absorption light_green.main.math
execute unless score $mod_equip light_green.main.math matches 1 run function light_green:item/golem/mod/second_life/return_resistance
$scoreboard players set $mod_$(mod) light_green.main.math 1

execute if score $mod_saturation light_green.main.math matches 1 run function light_green:item/golem/mod/saturation/tick
execute if score $mod_absorption light_green.main.math matches 1 run function light_green:item/golem/mod/absorption/tick
execute if score $mod_second_life light_green.main.math matches 1 run function light_green:item/golem/mod/second_life/tick


$scoreboard players reset $mod_$(mod) light_green.main.math
$scoreboard players set $mod_$(mod) light_green.main.math 1

execute if score $mod_adapt light_green.main.math matches 1 run function light_green:item/golem/mod/adapt/tick with storage light_green:player
execute if score $mod_scout light_green.main.math matches 1 run function light_green:item/golem/mod/scout/tick with storage light_green:player

$scoreboard players reset $mod_$(mod) light_green.main.math
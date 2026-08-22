$scoreboard players set $$(type) wool_purple.main.math 1
function ordered_splinter_give:type
$scoreboard players reset $$(type) wool_purple.main.math
$scoreboard players set $$(set) wool_purple.main.math 1
function ordered_splinter_give:set
$scoreboard players reset $$(type) wool_purple.main.math


execute if score $weapon_type wool_purple.main.math matches 1 run return run function ordered_splinter_give:sword/convert
execute if score $weapon_type wool_purple.main.math matches 4 run return run function ordered_splinter_give:gloves/convert
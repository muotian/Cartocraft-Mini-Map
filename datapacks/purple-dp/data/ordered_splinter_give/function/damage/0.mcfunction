$scoreboard players operation $$(damage_type) wool_purple.give.damage *= $1$(quality) wool_purple.main.math
$scoreboard players operation $$(damage_type) wool_purple.give.damage /= $10 wool_purple.main.math
$execute store result storage give:weapon damage1 int 0.1 run scoreboard players get $$(damage_type) wool_purple.give.damage
$execute store result storage give:weapon damage2 int 1 run scoreboard players operation $$(damage_type) wool_purple.give.damage %= $10 wool_purple.main.math
function ordered_splinter_give:damage/1 with storage give:weapon
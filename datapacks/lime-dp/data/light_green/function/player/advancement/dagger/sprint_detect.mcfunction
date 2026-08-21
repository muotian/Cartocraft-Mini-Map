scoreboard players set $cost light_green.main.math 20
execute store result storage light_green:weapon cost int 1 run scoreboard players operation $cost light_green.main.math -= @s light_green.dagger_sprint.decost
execute unless score $cost light_green.main.math matches 5.. store result storage light_green:weapon cost int 1 run scoreboard players set $cost light_green.main.math 5
function light_green:player/advancement/dagger/sprint_detect_1 with storage light_green:weapon
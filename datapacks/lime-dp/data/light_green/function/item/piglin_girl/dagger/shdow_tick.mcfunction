scoreboard players add @s light_green.main.math 1
execute store result storage light_green:player id int 1 run scoreboard players get @s light_green.player_id
function light_green:item/piglin_girl/dagger/shdow_facing with storage light_green:player
execute if score @s light_green.main.math matches 400.. run kill @s
execute if entity @s[tag=light_green.crack_apply_ready] run tag @s add light_green.crack_apply
execute if entity @s[tag=light_green.crack_apply_ready] run tag @s remove light_green.crack_apply_ready
execute store result storage light_green:player id int 1 run scoreboard players get @s light_green.player_id
function light_green:player/advancement/axe/reback/2 with storage light_green:player
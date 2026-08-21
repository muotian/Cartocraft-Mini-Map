gamemode survival
execute store result storage light_green:player id int 1 run scoreboard players get @s light_green.player_id
function light_green:arena/replace/1 with storage light_green:player
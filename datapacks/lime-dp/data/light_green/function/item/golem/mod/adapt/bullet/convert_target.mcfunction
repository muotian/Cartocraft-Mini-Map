execute store result storage light_green:golem_item id int 1 run scoreboard players get @s light_green.bullet_id
execute store result storage light_green:golem_item player_id int 1 run scoreboard players get @s light_green.player_id
function light_green:item/golem/mod/adapt/bullet/convert_target2 with storage light_green:golem_item
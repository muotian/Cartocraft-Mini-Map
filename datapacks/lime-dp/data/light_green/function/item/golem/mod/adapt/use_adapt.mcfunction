$scoreboard players set $use_adapt light_green.main.math $(use)
execute store result storage light_green:golem_item id int 1 run scoreboard players get @s light_green.player_id
function light_green:item/golem/mod/adapt/use_adapt2 with storage light_green:golem_item
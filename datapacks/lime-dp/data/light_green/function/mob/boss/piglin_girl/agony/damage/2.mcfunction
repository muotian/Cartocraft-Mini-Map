tag @s remove light_green.agony.math
$damage @s $(agony) light_green:agony by @p[scores={light_green.player_id=$(id)}]
scoreboard players reset @s light_green.player_id
scoreboard players reset @s light_green.agony
tag @s remove light_green.agony.by_player
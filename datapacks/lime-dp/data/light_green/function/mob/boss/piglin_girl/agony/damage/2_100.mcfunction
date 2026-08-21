tag @s remove light_green.agony.math
$damage @s 100 light_green:agony by @p[scores={light_green.player_id=$(id)}]
$scoreboard players operation @s light_green.player_id = @p[scores={light_green.player_id=$(id)}] light_green.player_id
scoreboard players remove @s light_green.agony 2
tag @s add light_green.agony.math
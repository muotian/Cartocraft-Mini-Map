$execute as @p[scores={light_green.player_id=$(player_id)}] run tag @s remove light_green.bullet.$(id).target
$execute as @n[type=!#light_green:no_hp,type=!player,distance=..50] run tag @s add light_green.bullet.$(id).target
tag @s remove light_green.bullet.keep
tag @s add light_green.bullet.target
tag @s add light_green.bullet.attack
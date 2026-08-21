$execute at @p[scores={light_green.player_id=$(id)}] rotated ~ 0 run tp @s ~ ~1 ~ ~ ~

$execute if score @s light_green.main.math matches 6 as @p[scores={light_green.player_id=$(id)}] run tag @s add light_green.spear.deupgrade2
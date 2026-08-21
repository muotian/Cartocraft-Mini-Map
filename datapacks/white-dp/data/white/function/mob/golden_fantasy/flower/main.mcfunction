
scoreboard players add @s white.duration 1

execute if score @s white.duration matches 2 at @s run tp ~ ~0.4 ~
execute if score @s white.duration matches 30.. at @s run tp ~ ~-0.01 ~

execute if score @s white.duration matches 60.. run kill @s
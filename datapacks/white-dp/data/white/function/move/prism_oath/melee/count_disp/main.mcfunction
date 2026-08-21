
scoreboard players add @s white.duration 1

execute if score @s white.duration matches 1 run data modify entity @s text_opacity set value 255
execute if score @s white.duration matches 2 run data modify entity @s text_opacity set value 215
execute if score @s white.duration matches 3 run data modify entity @s text_opacity set value 176
execute if score @s white.duration matches 4 run data modify entity @s text_opacity set value 139
execute if score @s white.duration matches 5 run data modify entity @s text_opacity set value 105
execute if score @s white.duration matches 6 run data modify entity @s text_opacity set value 74
execute if score @s white.duration matches 7 run data modify entity @s text_opacity set value 48
execute if score @s white.duration matches 8 run data modify entity @s text_opacity set value 27
execute if score @s white.duration matches 9 run data modify entity @s text_opacity set value 12
execute if score @s white.duration matches 10 run data modify entity @s text_opacity set value 3
execute if score @s white.duration matches 11.. run kill @s
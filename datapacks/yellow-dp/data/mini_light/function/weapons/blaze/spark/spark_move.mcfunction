# 執行者、執行位置是spark

function mini_light:weapons/blaze/spark/find_target
execute unless entity @e[tag=my_marker,type=marker] run kill @s

execute facing entity @n[tag=my_marker] eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^25 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute rotated as @s run tp @s ^ ^ ^0.25
execute at @s run function mini_light:weapons/blaze/spark/particle

execute if entity @n[tag=my_marker,distance=..0.5] run function mini_light:weapons/blaze/spark/hit



tag @e[type=marker,tag=my_marker] remove my_marker
# 執行者、執行位置是酸液炸彈
scoreboard players add @s wool_purple.kill_acid_spray 1
function ordered_splinter:monster/acid_spray/unbind

function ordered_splinter:monster/acid_spray/find_player
execute unless entity @e[tag=wool_purple.acid_target] run function ordered_splinter:monster/acid_spray/over
execute at @s unless entity @e[tag=wool_purple.demon,distance=..15] run function ordered_splinter:monster/acid_spray/over
execute at @s if score @s wool_purple.kill_acid_spray matches 400 run function ordered_splinter:monster/acid_spray/over

execute facing entity @n[tag=wool_purple.acid_target] eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^10 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute rotated as @s if block ^ ^ ^0.09 #ordered_splinter:transparent run tp @s ^ ^ ^0.0995
execute at @s if entity @e[tag=wool_purple.acid_target] run function ordered_splinter:particle/acid_spray

tag @e[tag=wool_purple.acid_target] remove wool_purple.acid_target
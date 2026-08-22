# 執行者、執行位置是光束

function ordered_splinter:sword/isaiah/find_target
execute unless entity @e[tag=wool_purple.isaiah_target] run kill @s

execute facing entity @n[tag=wool_purple.isaiah_target] eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute rotated as @s run tp @s ^ ^ ^0.375
execute at @s if entity @e[tag=wool_purple.isaiah_target] run function ordered_splinter:particle/isaiah_raycast

execute if entity @n[tag=wool_purple.isaiah_target,dx=0] run function ordered_splinter:sword/isaiah/raycast_damage

tag @e[tag=wool_purple.isaiah_target] remove wool_purple.isaiah_target
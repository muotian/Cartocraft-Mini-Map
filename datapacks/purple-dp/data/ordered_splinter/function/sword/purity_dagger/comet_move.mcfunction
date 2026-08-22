# 執行者、執行位置是彗星

scoreboard players add @s wool_purple.kill_comet 1
execute if score @s wool_purple.kill_comet matches 200 run kill @s

function ordered_splinter:sword/purity_dagger/find_target
execute unless entity @e[tag=wool_purple.comet_target] run kill @s

execute facing entity @n[tag=wool_purple.comet_target] eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^25 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute rotated as @s if block ^ ^ ^0.3 #ordered_splinter:transparent run tp @s ^ ^ ^0.275
execute at @s if entity @e[tag=wool_purple.comet_target] run function ordered_splinter:particle/comet

execute if entity @n[tag=wool_purple.comet_target,dx=0] run function ordered_splinter:sword/purity_dagger/comet_damage

tag @e[tag=wool_purple.comet_target] remove wool_purple.comet_target
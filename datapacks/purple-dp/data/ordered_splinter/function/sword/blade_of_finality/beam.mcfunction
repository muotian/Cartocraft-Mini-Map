particle minecraft:soul_fire_flame ~ ~ ~ 0.05 0.05 0.05 0.01 0
scoreboard players remove $itt wool_purple.raycast 1

execute if score $itt wool_purple.raycast matches 1.. positioned ^ ^ ^0.2 unless entity @e[tag=wool_purple.chain_target,distance=..0.4] run function ordered_splinter:sword/blade_of_finality/beam

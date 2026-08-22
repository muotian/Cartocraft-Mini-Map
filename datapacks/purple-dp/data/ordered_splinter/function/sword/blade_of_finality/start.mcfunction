scoreboard players set $itt wool_purple.raycast 30
scoreboard players set $count wool_purple.raycast 0
tag @s add origin

execute anchored eyes run function ordered_splinter:sword/blade_of_finality/raycast

execute as @e[type=!#no_hp,tag=wool_purple.hit] at @s run function ordered_splinter:sword/blade_of_finality/damage
tag @s remove origin
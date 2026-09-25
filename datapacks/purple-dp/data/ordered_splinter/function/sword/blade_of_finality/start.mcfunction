tag @s add wool_purple.chain_origin
scoreboard players set $count wool_purple.raycast 0

execute as @n[tag=wool_purple.damage.hit] at @s run function ordered_splinter:sword/blade_of_finality/first_hit

execute as @e[type=#mobs,tag=wool_purple.hit] at @s run function ordered_splinter:sword/blade_of_finality/damage
tag @e[tag=wool_purple.chain_source] remove wool_purple.chain_source
tag @s remove wool_purple.chain_origin

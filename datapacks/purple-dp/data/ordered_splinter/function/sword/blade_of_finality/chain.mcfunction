tag @s add wool_purple.hit
scoreboard players set $itt wool_purple.raycast 300
tp @s ~ 300 ~
function ordered_splinter:sword/blade_of_finality/raycast
tp @s ~ ~ ~

# chain the chain
execute if score $count wool_purple.raycast matches ..5 if entity @e[tag=origin,distance=..10] run function ordered_splinter:sword/blade_of_finality/hit
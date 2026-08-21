particle wax_off ^ ^ ^ 0.0 0.0 0.0 0 0 force
particle wax_off ^ ^ ^0.15 0.0 0.0 0.0 0 0 force
particle wax_off ^ ^ ^-0.15 0.0 0.0 0.0 0 0 force

scoreboard players remove $itt mini_light.main 1

execute positioned ~-0.15 ~-0.15 ~-0.15 as @n[tag=mini_light.glow_next] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run scoreboard players set $itt mini_light.main -1
execute if score $itt mini_light.main matches 1.. positioned ^ ^ ^0.5 run return run function mini_light:weapons/candle/amethyst/raycast
execute positioned ~-0.15 ~-0.15 ~-0.15 as @n[tag=mini_light.glow_next] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] at @s run function mini_light:weapons/candle/amethyst/hit
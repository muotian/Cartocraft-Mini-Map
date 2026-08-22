particle minecraft:soul_fire_flame ~ ~ ~ 0.05 0.05 0.05 0.01 0
playsound minecraft:block.fire.ambient player @a ~ ~ ~ 1 2 0.1
scoreboard players remove $itt wool_purple.raycast 1

execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=!#no_hp,dx=0,dy=0,dz=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set $itt wool_purple.raycast -1

execute if score $itt wool_purple.raycast matches 1.. positioned ^ ^ ^0.05 run function ordered_splinter:sword/blade_of_finality/raycast

execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[type=!#no_hp,tag=!wool_purple.hit,dx=0,dy=0,dz=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] positioned ~0.85 ~0.85 ~0.85 run function ordered_splinter:sword/blade_of_finality/hit
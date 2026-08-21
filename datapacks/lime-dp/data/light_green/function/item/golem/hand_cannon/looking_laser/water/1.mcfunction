execute rotated ~ 0 positioned ^ ^ ^ positioned ~-0.5 ~ ~-0.5 if entity @n[type=!#light_green:no_hp,dx=0] as @n[type=!#light_green:no_hp,dx=0,type=!player] run tag @s add light_green.hand_cannon.hit
execute rotated ~ 0 positioned ^ ^ ^0.5 positioned ~-0.5 ~ ~-0.5 if entity @n[type=!#light_green:no_hp,dx=0] as @n[type=!#light_green:no_hp,dx=0,type=!player] run tag @s add light_green.hand_cannon.hit
particle bubble_pop ^ ^ ^ 0 0 0 0 1 force
particle bubble_pop ^ ^ ^0.5 0 0 0 0 1 force
scoreboard players add $looking_laser light_green.main.math 1
execute unless block ^ ^ ^1 #light_green:not positioned ~ ~ ~ run return run function light_green:item/golem/hand_cannon/looking_laser/water/end_block
execute if score $looking_laser light_green.main.math matches 25.. run return run function light_green:item/golem/hand_cannon/looking_laser/water/end
execute unless score $looking_laser light_green.main.math matches 25.. positioned ^ ^ ^1 run function light_green:item/golem/hand_cannon/looking_laser/water/1
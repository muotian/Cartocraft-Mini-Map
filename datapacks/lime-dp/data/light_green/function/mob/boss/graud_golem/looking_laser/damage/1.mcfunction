execute rotated ~ 0 positioned ^ ^ ^ positioned ~-0.5 ~ ~-0.5 if entity @n[type=!#light_green:no_hp,dx=0] as @n[type=!#light_green:no_hp,dx=0] unless score @s light_green.team matches 1 run damage @s 1 light_green:laser by @n[tag=light_green.boss.graud_golem]
execute rotated ~ 0 positioned ^ ^ ^0.5 positioned ~-0.5 ~ ~-0.5 if entity @n[type=!#light_green:no_hp,dx=0] as @n[type=!#light_green:no_hp,dx=0] unless score @s light_green.team matches 1 run damage @s 1 light_green:laser by @n[tag=light_green.boss.graud_golem]
particle dust{color:11993343,scale:1} ^ ^ ^ 0 0 0 10000 1 force
particle dust{color:11993343,scale:1} ^ ^ ^0.5 0 0 0 10000 1 force
scoreboard players add $looking_laser light_green.main.math 1
execute if entity @n[tag=light_green.boss.graud_golem.head,distance=..1] run return run kill @s
execute unless block ^ ^ ^1 #light_green:not positioned ~ ~ ~ run return run kill @s
execute if score $looking_laser light_green.main.math matches 25.. run return run kill @s
execute unless score $looking_laser light_green.main.math matches 25.. positioned ^ ^ ^1 run function light_green:mob/boss/graud_golem/looking_laser/damage/1
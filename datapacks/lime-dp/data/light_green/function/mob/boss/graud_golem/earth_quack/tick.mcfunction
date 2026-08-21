execute if score @s light_green.mob.ai matches 20.. run kill @s
scoreboard players add @s light_green.main.math 1
execute if score @s light_green.main.math matches 1 run function light_green:earth_quack/0

execute if score @s light_green.main.math matches 2 positioned ~-1.25 ~ ~-1.55 if entity @e[type=!#light_green:no_hp,dx=1.5,dz=1.5,limit=1] as @e[type=!#light_green:no_hp,dx=1.5,dz=1.5,limit=1] unless score @s light_green.team matches 1 run function light_green:mob/boss/graud_golem/earth_quack/damage

execute if score @s light_green.main.math matches 2 run tag @s add light_green.summon.earth_quack
execute store result storage light_green:boss rotate int 1 run data get entity @s Rotation[0]
execute if score @s light_green.main.math matches 2 positioned ^ ^ ^1 run function light_green:mob/boss/graud_golem/earth_quack/summon with storage light_green:boss
execute if score @s light_green.main.math matches 2 run tag @s remove light_green.summon.earth_quack
execute if score @s light_green.main.math matches 2 run kill @s
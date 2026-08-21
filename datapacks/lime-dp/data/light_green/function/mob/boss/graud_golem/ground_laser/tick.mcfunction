execute if entity @s[tag=light_green.from_player] run return run function light_green:item/golem/hand_cannon/ground_laser/tick
execute if entity @s[tag=light_green.from_small] run return run function light_green:mob/small_golem/ground_laser/tick
scoreboard players add @s light_green.main.math 1

execute positioned ~-1 ~ ~-1 if entity @n[type=!#light_green:no_hp,dy=15,dx=1,dz=1] as @n[type=!#light_green:no_hp,dy=15,dx=1,dz=1] unless score @s light_green.team matches 1 run damage @s 0.65 light_green:laser by @n[tag=light_green.boss.graud_golem]
execute positioned ~-1 ~ ~-1 if entity @n[type=!#light_green:no_hp,dy=-15,dx=1,dz=1] as @n[type=!#light_green:no_hp,dy=-15,dx=1,dz=1] unless score @s light_green.team matches 1 run damage @s 0.65 light_green:laser by @n[tag=light_green.boss.graud_golem]

tp @s ~ ~ ~ ~10 ~

execute if score @s light_green.main.math matches 39.. run return run kill @s

execute if score @s light_green.main.math matches 35.. run return run function light_green:mob/boss/graud_golem/ground_laser/remove

execute if score @s light_green.main.math matches 10.. run return fail

execute store result score $laser_width light_green.main.math run data get entity @s transformation.scale[0] 10
execute store result entity @s transformation.scale[0] float 0.1 run scoreboard players add $laser_width light_green.main.math 1
execute store result entity @s transformation.scale[2] float 0.1 run scoreboard players get $laser_width light_green.main.math

execute store result score $laser_high light_green.main.math run data get entity @s transformation.scale[1]
execute store result entity @s transformation.scale[1] int 1 run scoreboard players add $laser_high light_green.main.math 2

tp @s ~ ~1 ~
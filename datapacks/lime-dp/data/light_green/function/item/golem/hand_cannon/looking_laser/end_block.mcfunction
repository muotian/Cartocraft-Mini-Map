execute if entity @e[tag=light_green.hand_cannon.hit,distance=..50] run scoreboard players add @p[tag=light_green.hand_cannon.user,distance=..50] light_green.hand_cannon_hit 1
execute as @e[tag=light_green.hand_cannon.hit,distance=..50] run damage @s 1 light_green:laser by @p[tag=light_green.hand_cannon.user,distance=..50]
execute as @e[tag=light_green.hand_cannon.hit,distance=..50] run tag @s remove light_green.hand_cannon.hit
execute as @p[tag=light_green.hand_cannon.user] store result score $rotate light_green.main.math run data get entity @s Rotation[1]
execute if score $rotate light_green.main.math matches 50.. at @p[tag=light_green.hand_cannon.user] at @n[type=!#light_green:no_hp,distance=..10,type=!player] run function light_green:item/golem/hand_cannon/ground_laser/ready/summon
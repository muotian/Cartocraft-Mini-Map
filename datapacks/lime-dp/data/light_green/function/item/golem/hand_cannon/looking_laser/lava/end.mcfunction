execute if entity @e[tag=light_green.hand_cannon.hit,distance=..50] run scoreboard players add @p[tag=light_green.hand_cannon.user,distance=..50] light_green.hand_cannon_hit 1
execute as @e[tag=light_green.hand_cannon.hit,distance=..50] run damage @s 1 light_green:laser by @p[tag=light_green.hand_cannon.user,distance=..50]
execute as @e[tag=light_green.hand_cannon.hit,distance=..50] run function light_green:item/golem/hand_cannon/looking_laser/lava/fire
execute as @e[tag=light_green.hand_cannon.hit,distance=..50] run tag @s remove light_green.hand_cannon.hit
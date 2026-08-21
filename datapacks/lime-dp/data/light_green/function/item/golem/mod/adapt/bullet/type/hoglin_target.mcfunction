$execute as @n[tag=light_green.damage_target,type=!player,distance=..10] run damage @s 1 light_green:bullet by @p[scores={light_green.player_id=$(id)}]
execute as @n[tag=light_green.damage_target,type=!player,distance=..10] run effect give @s slowness 1 0 false
execute as @n[tag=light_green.damage_target,type=!player,distance=..10] run effect give @s weakness 1 0 false
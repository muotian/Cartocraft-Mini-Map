execute as @e[tag=wool_purple.sword_radiance_front,type=marker] at @s run function ordered_splinter:monster/sword_radiance/move
execute as @e[tag=wool_purple.sword_radiance_front,type=marker] at @s anchored eyes positioned ^ ^ ^ run function ordered_splinter:particle/sword_radiance
execute as @e[tag=wool_purple.sword_radiance_behind,type=marker] at @s run function ordered_splinter:monster/sword_radiance/move
execute as @e[tag=wool_purple.sword_radiance_front,type=marker] at @s if entity @n[tag=wool_purple.target,distance=..5] run tag @n[tag=wool_purple.target,distance=..5] add wool_purple.sword_radiance_target
execute as @e[tag=wool_purple.sword_radiance_behind,type=marker] at @s if entity @n[tag=wool_purple.target,distance=..5] run tag @n[tag=wool_purple.target,distance=..5] remove wool_purple.sword_radiance_target
execute as @e[tag=wool_purple.sword_radiance_target,tag=!wool_purple.sword_radiance_damage_cd] at @s run function ordered_splinter:monster/sword_radiance/damage
execute as @e[tag=wool_purple.sword_radiance_damage_cd] at @s run scoreboard players add @s wool_purple.player_damage_cd 1
execute as @e[tag=wool_purple.sword_radiance_damage_cd] at @s if score @s wool_purple.player_damage_cd matches 10 run function ordered_splinter:monster/sword_radiance/attackable_again

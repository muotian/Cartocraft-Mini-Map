execute as @e[tag=wool_purple.ice_display] at @s run function ordered_splinter:boss/archdemon/animation/ice_binding
execute as @e[tag=wool_purple.ice_less] run scoreboard players add @s wool_purple.ice_remove 1
execute as @e[tag=wool_purple.ice_less] if score @s wool_purple.ice_remove matches 573 at @s run data merge entity @n[tag=wool_purple.ice_in] {start_interpolation:10,interpolation_duration:20,transformation:[0.1f,0f,0f,0f,0f,0.1f,0f,0f,0f,0f,0.1f,0f,0f,0f,0f,1f]}
execute as @e[tag=wool_purple.ice_less] if score @s wool_purple.ice_remove matches 600 at @s run function ordered_splinter:boss/archdemon/animation/ice_thaw
execute as @e[tag=wool_purple.ice_less] at @s positioned ~-.5 ~-.5 ~-.5 if entity @e[dx=0,type=!#minecraft:no_hp,tag=!wool_purple.boss_mainbody] run function ordered_splinter:boss/archdemon/animation/ice_damage
execute as @e[tag=wool_purple.ice_less] at @s if block ~ ~-0.15 ~ #ordered_splinter:transparent unless predicate ordered_splinter:is_ride_motion run tp @s ~ ~-0.1 ~

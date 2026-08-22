execute if score @s wool_purple.boss_animation matches 19 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 0.6
execute if score @s wool_purple.boss_animation matches 13 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 1.2
execute if score @s wool_purple.boss_animation matches 0 as @e[tag=wool_purple.collision_target] run effect clear @s slowness
execute if score @s wool_purple.boss_animation matches 0 as @e[tag=wool_purple.collision_target] run attribute @s jump_strength modifier remove wool_purple.archdemon_sprint
execute if score @s wool_purple.boss_animation matches 0 as @e[tag=wool_purple.collision_target] run tag @s remove wool_purple.collision_target
execute if score @s wool_purple.boss_animation matches 0 as @e[tag=wool_purple.sprint_target] run tag @s remove wool_purple.sprint_target
execute if score @s wool_purple.boss_animation matches 0 run function ordered_splinter:boss/archdemon/move/detect_attack
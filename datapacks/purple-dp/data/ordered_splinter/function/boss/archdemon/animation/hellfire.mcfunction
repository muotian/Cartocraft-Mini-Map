execute if score @s wool_purple.boss_move_step matches 1 if score @s wool_purple.boss_animation matches 43 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 1.4
execute if score @s wool_purple.boss_animation matches 43 as a11-0-0-0-1 run data modify entity @s NoAI set value 1b
execute if score @s wool_purple.boss_animation matches 43 as @e[tag=wool_purple.fire] run data modify entity @s Rotation set from entity a11-0-0-0-1 Rotation
execute if score @s wool_purple.boss_animation matches 45 run playsound minecraft:entity.warden.sonic_charge hostile @a ~ ~ ~ 2 1.8
execute if score @s wool_purple.boss_animation matches 25 run playsound minecraft:entity.warden.sonic_boom hostile @a ~ ~ ~ 2 1
execute if score @s wool_purple.boss_animation matches 5..25 as @e[tag=wool_purple.fire] at @s run function ordered_splinter:boss/archdemon/animation/hellfire_raycast
execute if score @s wool_purple.boss_animation matches 5..25 as @e[tag=wool_purple.fire] at @s rotated ~ ~-12 run function ordered_splinter:boss/archdemon/animation/hellfire_raycast
execute if score @s wool_purple.boss_animation matches 5..25 as @e[tag=wool_purple.fire] at @s rotated ~-12 ~6 run function ordered_splinter:boss/archdemon/animation/hellfire_raycast
execute if score @s wool_purple.boss_animation matches 5..25 as @e[tag=wool_purple.fire] at @s rotated ~15 ~6 run function ordered_splinter:boss/archdemon/animation/hellfire_raycast
execute if score @s wool_purple.boss_animation matches 5 run playsound minecraft:item.brush.brushing.gravel hostile @a ~ ~ ~ 2 0.1
execute if score @s wool_purple.boss_animation matches 0 as a11-0-0-0-1 run data modify entity @s NoAI set value 0b
execute if score @s wool_purple.boss_animation matches 0 run tag @e[tag=wool_purple.hellfire_target] remove wool_purple.hellfire_target
execute if score @s wool_purple.boss_animation matches 0 run function ordered_splinter:boss/archdemon/move/detect_attack
execute at a11-0-0-0-1 as @e[distance=0.1..5,type=!#no_hp] store result score @s wool_purple.y_pos run data get entity @s Pos[1]
execute at a11-0-0-0-1 as @e[distance=0.1..3,type=!#no_hp] if score @s wool_purple.y_pos = $y_pos wool_purple.boss_animation run tag @s add wool_purple.jump_target
execute as @a[tag=wool_purple.jump_target] at @s run function ordered_splinter:boss/archdemon/player_motion
execute as @e[tag=wool_purple.jump_target,type=#mobs] at a11-0-0-0-1 run function ordered_splinter:boss/archdemon/animation/jump_mob_motion
execute as @e[tag=wool_purple.jump_target] at @s run damage @s 10 ordered_splinter:no_impact by a11-0-0-0-1
execute as @e[tag=wool_purple.jump_target,tag=wool_purple.monster] at @s run function ordered_splinter:monster/add_tag
tag @e[tag=wool_purple.jump_target] remove wool_purple.jump_target
scoreboard players reset @e wool_purple.y_pos
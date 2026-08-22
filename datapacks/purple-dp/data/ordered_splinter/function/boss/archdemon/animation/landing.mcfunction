execute if score @s wool_purple.boss_animation matches 18 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2
execute if score @s wool_purple.boss_animation matches 15 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 1.2
execute if score @s wool_purple.boss_animation matches 15 run playsound item.mace.smash_ground hostile @a ~ ~ ~ 2 1
execute if score @s wool_purple.boss_animation matches 15 run particle block{block_state:"minecraft:blackstone"} ~ ~ ~ 1.25 0 1.25 0 50
execute if score @s wool_purple.boss_animation matches 15 run function ordered_splinter:boss/archdemon/animation/jump_damage
execute if score @s wool_purple.boss_animation matches 0 run function ordered_splinter:boss/archdemon/move/detect_attack
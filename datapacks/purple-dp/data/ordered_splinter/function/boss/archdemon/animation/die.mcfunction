execute if score @s wool_purple.boss_animation matches 30 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 0.8
execute if score @s wool_purple.boss_animation matches 21 run playsound entity.ravager.death hostile @a ~ ~ ~ 2 0.6
execute if score @s wool_purple.boss_animation matches 19 run playsound minecraft:item.brush.brushing.gravel hostile @a ~ ~ ~ 2 1.2
execute if score @s wool_purple.boss_animation matches 12 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2
execute if score @s wool_purple.boss_animation matches 5 run playsound minecraft:block.pointed_dripstone.land hostile @a ~ ~ ~ 2 0.1
execute if score @s wool_purple.boss_animation matches -20 as a11-0-0-0-5 at @s run function ordered_splinter:box/open_box/summon_boss_box
execute if score @s wool_purple.boss_animation matches -20 as a11-0-0-0-6 run tag @s add wool_purple.portal
execute if score @s wool_purple.boss_animation matches -20 as a11-1-2-3-4 run tag @s add wool_purple.end
execute if score @s wool_purple.boss_animation matches -20 run function ordered_splinter:boss/archdemon/kill
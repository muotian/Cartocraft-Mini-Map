execute at a11-0-0-0-1 run tp @s ~ ~ ~
execute rotated as a11-0-0-0-1 positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^10 facing entity @s feet facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0

execute if score @s wool_purple.boss_type matches ..-1 run return run function ordered_splinter:boss/archdemon/animation/convert

execute store result bossbar minecraft:wool_purple.boss_hp value run scoreboard players get @s wool_purple.boss_custom_hp
bossbar set minecraft:wool_purple.boss_hp players @a[distance=..40]

execute store result score @s wool_purple.boss_hp as a11-0-0-0-1 run data get entity @s Health
execute as @s[tag=!wool_purple.boss_hurt] if score @s wool_purple.boss_hp < @s wool_purple.boss_hp_late run function ordered_splinter:boss/archdemon/hp
scoreboard players operation @s wool_purple.boss_hp_late = @s wool_purple.boss_hp
execute if score @s wool_purple.boss_hurttime matches 1.. run function ordered_splinter:boss/archdemon/default

execute if score @s wool_purple.boss_custom_hp matches ..0 run return run function ordered_splinter:boss/archdemon/skill/die

execute as a11-0-0-0-1 store result score $y_pos wool_purple.boss_animation run data get entity @s Pos[1]
execute as a11-0-0-0-1 store result score $on_ground wool_purple.boss_animation run data get entity @s OnGround

execute if score $archdemon_ice_to_sprint wool_purple.boss_animation matches 1.. run scoreboard players remove $archdemon_ice_to_sprint wool_purple.boss_animation 1
execute if score $archdemon_ice_to_sprint wool_purple.boss_animation matches 0 unless score @s wool_purple.boss_type matches 1.. run function ordered_splinter:boss/archdemon/skill/sprint_ice

execute if entity @s[tag=wool_purple.ready_to_fire] unless score @s wool_purple.boss_type matches 1.. run function ordered_splinter:boss/archdemon/skill/hellfire

execute unless score @s wool_purple.boss_type matches 1.. run function ordered_splinter:boss/archdemon/attack_detect
execute as a11-0-0-0-1 store result score $move wool_purple.boss_animation run execute if predicate ordered_splinter:move
execute unless score @s wool_purple.boss_type matches 1.. run function ordered_splinter:boss/archdemon/move/detect
execute if score @s wool_purple.boss_type matches 1.. run return run function ordered_splinter:boss/archdemon/animation/convert
execute if score @s wool_purple.boss_move_step matches 1.. run function ordered_splinter:boss/archdemon/animation/convert
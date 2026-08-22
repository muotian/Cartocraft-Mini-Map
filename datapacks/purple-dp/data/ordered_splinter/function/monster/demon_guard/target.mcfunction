tp @s ~ ~ ~ ~ ~
scoreboard players set @s wool_purple.mob.exist 1
execute if score #demon_guard_hurt wool_purple.mob.id matches 1.. run damage @s 0.0000001 out_of_world

execute unless score @s wool_purple.monster_ability matches 0..450 run scoreboard players set @s wool_purple.monster_ability 400
scoreboard players add @s wool_purple.monster_ability 1
execute if score @s wool_purple.monster_ability matches 410 if entity @n[tag=wool_purple.target,distance=..7.5] run playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 2 1.2
execute if score @s wool_purple.monster_ability matches 430 if entity @n[tag=wool_purple.target,distance=..7.5] run item modify entity @s weapon.mainhand [{function:"set_components",components:{item_model:"wool_purple:magic_circle_item"}}]
execute if score @s wool_purple.monster_ability matches 450 if entity @n[tag=wool_purple.target,distance=..7.5] anchored eyes positioned ^ ^-0.5 ^ run function ordered_splinter:monster/sword_radiance/summon
execute if score @s wool_purple.monster_ability matches 450 if entity @n[tag=wool_purple.target,distance=..7.5] run item modify entity @s weapon.mainhand [{function:"set_components",components:{item_model:"air"}}]
execute if score @s wool_purple.monster_ability matches 450 run scoreboard players set @s wool_purple.monster_ability 0
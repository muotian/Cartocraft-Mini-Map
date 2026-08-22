data modify entity @s Rotation[1] set value 0.0f
execute as @s[tag=wool_purple.demon_hurt,type=zombie] run scoreboard players add @s wool_purple.red 1
execute as @s[tag=wool_purple.demon_hurt,type=zombie] run function ordered_splinter:monster/demon/hurt
execute as @s[tag=wool_purple.demon_hurt,type=zombie] if score @s wool_purple.red matches 10 run scoreboard players set @s wool_purple.red 0
execute as @s[tag=wool_purple.demon_hurt,type=zombie] if score @s wool_purple.red matches 0 run function ordered_splinter:monster/demon/no_hurt
execute unless score @s wool_purple.monster_ability matches 0..450 run scoreboard players set @s wool_purple.monster_ability 400
scoreboard players add @s wool_purple.monster_ability 1
execute if score @s wool_purple.monster_ability matches 410 if entity @n[tag=wool_purple.target,distance=..7.5] run playsound minecraft:entity.ravager.celebrate hostile @a ~ ~ ~ 2 1.2
execute if score @s wool_purple.monster_ability matches 430..450 if entity @n[tag=wool_purple.target,distance=..7.5] run particle dust_color_transition{from_color:[1.000,0.000,0.635],to_color:[0.000,1.000,0.165],scale:1} ~ ~1.5 ~ 0.3 0.7 0.3 0.02 10
execute if score @s wool_purple.monster_ability matches 450 at @s if entity @n[tag=wool_purple.target,distance=..7.5] run function ordered_splinter:monster/acid_spray/summon
execute if score @s wool_purple.monster_ability matches 450 run scoreboard players set @s wool_purple.monster_ability 0
scoreboard players set @a wool_purple.use_shield 0
scoreboard players add @s wool_purple.monster_attack 1
execute if score @s wool_purple.monster_attack matches 180..200 at @s if entity @n[tag=wool_purple.target,distance=..7.5] run particle lava ~ ~ ~ 0.3 0.7 0.3 0.1 1
execute if score @s wool_purple.monster_attack matches 200 at @s if entity @n[tag=wool_purple.target,distance=..7.5] run function ordered_splinter:monster/fireball/summon
execute if score @s wool_purple.monster_attack matches 200 run scoreboard players set @s wool_purple.monster_attack 0
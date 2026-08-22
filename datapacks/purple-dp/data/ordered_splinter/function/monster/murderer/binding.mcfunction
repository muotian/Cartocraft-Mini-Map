scoreboard players operation #self wool_purple.mob.id = @s wool_purple.mob.id
execute store result score #murderer_hurt wool_purple.mob.id if entity @s[tag=wool_purple.murderer_hurt]
tag @s remove wool_purple.murderer_hurt
execute as @e[tag=wool_purple.murderer_mannequin,predicate=ordered_splinter:owner,limit=1,type=mannequin] run function ordered_splinter:monster/murderer/target

execute unless score @s wool_purple.monster_ability matches 0..250 run scoreboard players set @s wool_purple.monster_ability 200
scoreboard players add @s wool_purple.monster_ability 1
execute if score @s wool_purple.monster_ability matches 210 if entity @n[tag=wool_purple.target,distance=..7.5] run playsound minecraft:entity.evoker.celebrate hostile @a ~ ~ ~ 2 1.2
execute if score @s wool_purple.monster_ability matches 230 if entity @n[tag=wool_purple.target,distance=..7.5] run data modify entity @n[tag=wool_purple.murderer_mannequin,type=mannequin] pose set value crouching
execute if score @s wool_purple.monster_ability matches 230..250 if entity @n[tag=wool_purple.target,distance=..7.5] run particle minecraft:smoke ~ ~ ~ 0.2 0.6 0.2 0 5
execute if score @s wool_purple.monster_ability matches 250 at @s positioned as @n[tag=wool_purple.target,distance=..7.5] rotated as @n[tag=wool_purple.target] rotated ~ 0 if block ^ ^ ^-1 #ordered_splinter:transparent unless block ^ ^-1 ^-1 #ordered_splinter:transparent run playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 2 1.2
execute if score @s wool_purple.monster_ability matches 250 at @s positioned as @n[tag=wool_purple.target,distance=..7.5] rotated as @n[tag=wool_purple.target] rotated ~ 0 if block ^ ^ ^-1 #ordered_splinter:transparent unless block ^ ^-1 ^-1 #ordered_splinter:transparent run playsound minecraft:entity.player.teleport hostile @a ~ ~ ~ 2 1.2
execute if score @s wool_purple.monster_ability matches 250 at @s positioned as @n[tag=wool_purple.target,distance=..7.5] rotated as @n[tag=wool_purple.target] rotated ~ 0 if block ^ ^ ^-1 #ordered_splinter:transparent unless block ^ ^-1 ^-1 #ordered_splinter:transparent run tp @s ^ ^ ^-1.5
execute if score @s wool_purple.monster_ability matches 250 at @s positioned as @n[tag=wool_purple.target,distance=..7.5] rotated as @n[tag=wool_purple.target] rotated ~ 0 if block ^ ^ ^-1 #ordered_splinter:transparent unless block ^ ^-1 ^-1 #ordered_splinter:transparent run effect give @s strength 5 0 true
execute if score @s wool_purple.monster_ability matches 250 if entity @n[tag=wool_purple.target,distance=..7.5] run data modify entity @n[tag=wool_purple.murderer_mannequin,type=mannequin] pose set value standing
execute if score @s wool_purple.monster_ability matches 250 run scoreboard players set @s wool_purple.monster_ability 0
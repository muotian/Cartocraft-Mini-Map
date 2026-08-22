scoreboard players operation #self wool_purple.mob.id = @s wool_purple.mob.id
execute store result score #fallen_alchemist_hurt wool_purple.mob.id if entity @s[tag=wool_purple.fallen_alchemist_hurt]
tag @s remove wool_purple.fallen_alchemist_hurt
execute store result score #fallen_alchemist_ability wool_purple.mob.id if entity @s[tag=wool_purple.alchemist_ability]
execute if score #fallen_alchemist_ability wool_purple.mob.id matches 1.. run data merge entity @s[predicate=ordered_splinter:on_fire] {Fire:0b}
execute as @e[tag=wool_purple.fallen_alchemist_mannequin,predicate=ordered_splinter:owner,limit=1,type=mannequin] run function ordered_splinter:monster/fallen_alchemist/target
effect clear @s poison
execute unless score @s wool_purple.monster_ability matches 0..450 run scoreboard players set @s wool_purple.monster_ability 400
scoreboard players add @s wool_purple.monster_ability 1
execute if score @s wool_purple.monster_ability matches 450 if entity @n[tag=wool_purple.target,distance=..7.5] run function ordered_splinter:monster/fallen_alchemist/ability_start
execute if score @s wool_purple.monster_ability matches 450 run scoreboard players set @s wool_purple.monster_ability 0
execute as @s[tag=wool_purple.alchemist_ability,type=zombie] run scoreboard players add @s wool_purple.monster_attack 1
execute as @s[tag=wool_purple.alchemist_ability,type=zombie] run particle dragon_breath ~ ~1 ~ 0.1 0.1 0.1 0.005 5
execute as @s[tag=wool_purple.alchemist_ability,type=zombie] run tp ^ ^ ^0.1
execute as @s[tag=wool_purple.alchemist_ability,type=zombie] positioned ~-.5 ~-.5 ~-.5 if entity @n[tag=wool_purple.target,dx=0] run function ordered_splinter:monster/fallen_alchemist/ability_damage
execute as @s[tag=wool_purple.alchemist_ability,type=zombie] if score @s wool_purple.monster_attack matches 40 run function ordered_splinter:monster/fallen_alchemist/ability_end
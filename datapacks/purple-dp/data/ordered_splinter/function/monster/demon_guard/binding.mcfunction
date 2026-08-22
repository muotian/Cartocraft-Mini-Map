scoreboard players operation #self wool_purple.mob.id = @s wool_purple.mob.id
execute store result score #demon_guard_hurt wool_purple.mob.id if entity @s[tag=wool_purple.demon_guard_hurt]
tag @s remove wool_purple.demon_guard_hurt
execute as @e[tag=wool_purple.demon_guard_mannequin,predicate=ordered_splinter:owner,limit=1,type=mannequin] run function ordered_splinter:monster/demon_guard/target

scoreboard players add @s wool_purple.monster_attack 1
execute if score @s wool_purple.monster_attack matches 180..200 if entity @n[tag=wool_purple.target,distance=..7.5] run particle lava ~ ~ ~ 0.3 0.6 0.3 0.1 1
execute if score @s wool_purple.monster_attack matches 200 if entity @n[tag=wool_purple.target,distance=..7.5] run function ordered_splinter:monster/fireball/summon
execute if score @s wool_purple.monster_attack matches 200 run scoreboard players set @s wool_purple.monster_attack 0
scoreboard players operation #self wool_purple.mob.id = @s wool_purple.mob.id
execute store result score #imp_hurt wool_purple.mob.id if entity @s[tag=wool_purple.imp_hurt]
tag @s remove wool_purple.imp_hurt
execute as @e[tag=wool_purple.imp_mannequin,predicate=ordered_splinter:owner,limit=1,type=mannequin] run function ordered_splinter:monster/imp/target
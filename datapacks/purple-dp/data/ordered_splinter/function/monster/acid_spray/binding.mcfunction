scoreboard players operation #self wool_purple.mob.id = @s wool_purple.mob.id
scoreboard players set #exist wool_purple.mob.id 0
execute at @e[tag=wool_purple.acid_spray,predicate=ordered_splinter:owner,limit=1] store success score #exist wool_purple.mob.id run tp @s ~ ~ ~ ~ ~
execute if score #exist wool_purple.mob.id matches 0 run kill @s
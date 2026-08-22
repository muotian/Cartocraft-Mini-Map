scoreboard players operation #self wool_purple.mob.id = @s wool_purple.mob.id
scoreboard players set #exist wool_purple.mob.id 0
execute as @e[tag=wool_purple.acid_spray.entity,predicate=ordered_splinter:owner,limit=1] run scoreboard players set #exist wool_purple.mob.id 1
execute if score #exist wool_purple.mob.id matches 0 run kill @s
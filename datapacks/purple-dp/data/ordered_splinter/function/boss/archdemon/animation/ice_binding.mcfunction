scoreboard players operation #self wool_purple.mob.id = @s wool_purple.mob.id
tag @e[tag=wool_purple.ice_target,predicate=ordered_splinter:owner,limit=1] add wool_purple.mob.target
execute at @e[tag=wool_purple.mob.target,limit=1] run tp @s ~ ~ ~ ~ 0
execute unless entity @e[tag=wool_purple.mob.target,limit=1] run kill @s
execute unless entity @e[tag=wool_purple.mob.target,limit=1] run kill @e[tag=wool_purple.ice_display_in,limit=2]
tag @e[tag=wool_purple.mob.target,limit=1] remove wool_purple.mob.target
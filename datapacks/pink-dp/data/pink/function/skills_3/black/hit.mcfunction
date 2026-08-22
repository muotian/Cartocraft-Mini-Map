# check player
tag @s add this_aj
execute as @a[scores={pink.black.skill3.id=1..}] if score @s pink.black.skill3.id = @n[tag=this_aj] aj.id run tag @s add this_player
tag @s remove this_aj
#
execute as @p[tag=this_player] if predicate pink:effect/strength run tag @s add pink.strength
execute as @p[tag=this_player] run function pink:skills_3/black/regeneration

tag @p[tag=this_player] add pink.black3.player

execute on vehicle at @s run function pink:skills_3/black/damage_operation


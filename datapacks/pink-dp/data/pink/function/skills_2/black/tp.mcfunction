#
tag @s add this_aj
execute as @a[scores={aj.id=1..}] if score @s aj.id = @n[tag=this_aj] aj.id at @s run tp @n[tag=this_aj] ~ ~ ~
tag @s remove this_aj



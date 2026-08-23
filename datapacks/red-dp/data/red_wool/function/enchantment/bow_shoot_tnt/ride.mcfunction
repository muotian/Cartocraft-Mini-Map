advancement revoke @a only red_wool:weapons/bow_shoot_tnt

execute store result score @s red_wool.tmp run clear @s gunpowder 0
execute unless score @s red_wool.tmp matches 2.. run return fail
execute as @a[tag =! op] at @s unless dimension minecraft:overworld unless dimension minecraft:the_nether unless dimension minecraft:the_end run return fail

clear @s gunpowder 2
summon tnt ~ ~5 ~ {Tags:["red_wool.UnRideTNT", "red_wool.tnt_axe"],fuse:41,explosion_power:0}
ride @n[limit = 1, sort = nearest, tag = red_wool.UnRideTNT] mount @n[limit = 1, sort = nearest, type = arrow, tag = !red_wool.UnRideTNT]
tag @n[limit = 1, sort = nearest, tag = red_wool.UnRideTNT] add red_wool.UnRideTNT1
tag @n[limit = 1, sort = nearest, tag = red_wool.UnRideTNT] remove red_wool.UnRideTNT
tag @n[limit = 1, sort = nearest, type = #arrows, tag = !red_wool.UnRideTNT] add red_wool.UnRideTNT
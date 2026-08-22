rotate @s facing entity @p eyes
data modify entity @s Rotation[1] set value 0.0f

execute unless block ^ ^1 ^1 #ordered_splinter:transparent unless block ^ ^1 ^2 #ordered_splinter:transparent unless block ^ ^1 ^3 #ordered_splinter:transparent unless block ^ ^1 ^4 #ordered_splinter:transparent run return fail

tag @s add wool_purple.alchemist_ability
particle flash{color:[1.000,0.110,0.824,1.00]} ~ ~1 ~ 0.00001 0.00001 0.00001 1 1
playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 2 0.8
data modify entity @s Invulnerable set value 1b
data modify entity @s NoAI set value 1b
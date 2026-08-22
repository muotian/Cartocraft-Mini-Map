#
tag @s add this_

execute on attacker at @s anchored eyes run tp @n[tag=this_,tag=pink.tp_bug] ^ ^ ^1.7

tag @s remove this_

# 
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.5
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1

particle minecraft:dragon_breath ~ ~ ~ .4 .4 .4 0.05 50

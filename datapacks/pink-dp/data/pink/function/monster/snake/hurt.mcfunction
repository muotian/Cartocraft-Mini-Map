#
tag @s add hurt

execute as @e[tag=id_same] run data modify entity @s Health set from entity @n[tag=hurt] Health

tag @s remove hurt
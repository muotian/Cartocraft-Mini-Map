#
tag @s add this_m
$execute as @e[tag=math_marker] at @s positioned as @n[tag=this_m] facing entity @n[tag=pink.bh1] eyes positioned 0.0 0.0 0.0 run tp @s ^ ^ ^$(dis)

data modify entity @s Motion set from entity @n[tag=math_marker] Pos

tag @s remove this_m




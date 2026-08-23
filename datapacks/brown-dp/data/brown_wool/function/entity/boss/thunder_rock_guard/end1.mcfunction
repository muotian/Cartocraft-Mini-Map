

scoreboard players add @s brown_wool.thunder_rock_guard.end 1


particle firework ~ ~ ~ 0 1.5 0 0.15 0
execute if score @s brown_wool.thunder_rock_guard.end matches 1..160 facing entity @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] feet rotated ~ 0 run tp @s ^0.8 ^ ^0.1
execute if score @s brown_wool.thunder_rock_guard.end matches 161.. facing entity @e[type=marker, tag=brown_wool.thunder_rock_guard.terrain ,limit=1] feet rotated ~ 0 run tp @s ^0.2 ^ ^0.15
execute as @a[distance=..12] run playsound block.amethyst_cluster.fall player @s
execute if score @s brown_wool.thunder_rock_guard.end matches 200.. run kill @s



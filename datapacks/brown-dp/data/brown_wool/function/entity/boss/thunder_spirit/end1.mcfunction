

execute at @s if entity @a[distance=..12] positioned ~ ~-0.5 ~ run function brown_wool:entity/boss/thunder_spirit/marker_particle1

execute at @s as @a[distance=..1.4] at @n[type=marker, tag=brown_wool.thunder_spirit.end1] run tp @s ~ ~-45.5 ~4

execute at @s unless entity @a[distance=..50] run kill @s

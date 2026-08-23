data modify entity @s Rotation set from entity @n[type=#arrows, tag=red_wool.UnRideTNT] Rotation
execute at @n[type=#arrows, tag=red_wool.UnRideTNT, distance=..5] run tp @s ^ ^2 ^
execute unless entity @n[type=#arrows, tag=red_wool.UnRideTNT, distance=..5] run data modify entity @s fuse set value 2
execute unless entity @n[type=#arrows, tag=red_wool.UnRideTNT, distance=..5] run scoreboard players set @n[tag = red_wool.UnRideTNT1] red_wool.tnt_axe 40
execute unless entity @n[type=#arrows, tag=red_wool.UnRideTNT, distance=..5] run tag @s remove red_wool.UnRideTNT1

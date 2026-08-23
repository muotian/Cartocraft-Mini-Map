

execute if entity @a[distance=..50] if entity @s[tag=!brown_wool.thunder_spirit.end] unless entity @e[type=allay, tag=brown_wool.thunder_spirit0] unless entity @a[tag=brown_wool.thunder_spirit.player] run function brown_wool:entity/boss/thunder_spirit/reset

execute unless entity @e[type=allay, tag=brown_wool.thunder_spirit0] if entity @a[tag=brown_wool.thunder_spirit.player] run tag @s add brown_wool.thunder_spirit.end


execute if entity @s[tag=brown_wool.thunder_spirit.end] at @s run function brown_wool:entity/boss/thunder_spirit/end0



execute if entity @s[type=marker, tag=brown_wool.thunder_spirit.terrain_2] at @s run function brown_wool:entity/boss/thunder_spirit/terrain


execute as @e[type=allay, tag=brown_wool.thunder_spirit0] at @s run function brown_wool:entity/boss/thunder_spirit/as_monster0

execute if entity @a[distance=..50] unless score @s brown_wool.thunder_spirit.kill matches 4.. run function brown_wool:entity/boss/thunder_spirit/as_kill

execute if entity @s[type=marker, tag=!brown_wool.thunder_spirit.terrain_2] at @s if entity @a[distance=..12] positioned ~ ~-0.5 ~ run function brown_wool:entity/boss/thunder_spirit/marker_particle1

execute if entity @s[type=marker, tag=!brown_wool.thunder_spirit.terrain_2] at @s as @a[distance=..1.4] at @n[type=marker, tag=brown_wool.thunder_spirit.terrain] run tp @s ~ ~-45.5 ~4







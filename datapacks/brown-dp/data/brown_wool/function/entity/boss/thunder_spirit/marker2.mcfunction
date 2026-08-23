

execute unless score @s brown_wool.thunder_spirit2.narrative_marker2 matches 141 run scoreboard players add @s brown_wool.thunder_spirit2.narrative_marker2 1

execute if score @s brown_wool.thunder_spirit2.narrative_marker2 matches 1..100 as @e[type=allay,tag=brown_wool.thunder_spirit2.narrative] at @s run tp @s ^ ^0.3 ^0.3 ~2 ~
execute if score @s brown_wool.thunder_spirit2.narrative_marker2 matches 1..100 as @e[type=allay,tag=brown_wool.thunder_spirit2.narrative] at @s run particle dust{color:[0.4, 0.44, 0.96],scale:1} ~ ~ ~ 0.3 0.2 0.3 0.1 20
execute if score @s brown_wool.thunder_spirit2.narrative_marker2 matches 100 as @e[type=allay,tag=brown_wool.thunder_spirit2.narrative] at @s run tp @s ~ ~-230 ~
execute if score @s brown_wool.thunder_spirit2.narrative_marker2 matches 100 run kill @e[type=allay,tag=brown_wool.thunder_spirit2.narrative]
execute if score @s brown_wool.thunder_spirit2.narrative_marker2 matches 100 as @e[type=marker,tag=brown_wool.thunder_spirit.terrain_0,limit=1] run tag @s add brown_wool.thunder_spirit.terrain
execute if score @s brown_wool.thunder_spirit2.narrative_marker2 matches 100 as @e[type=marker,tag=brown_wool.thunder_spirit.terrain_0,limit=1] run tag @s remove brown_wool.thunder_spirit.terrain_0

execute if score @s brown_wool.thunder_spirit2.narrative_marker2 matches 141 unless entity @s[type=marker, tag=brown_wool.thunder_spirit.terrain_2] at @s if entity @a[distance=..12] positioned ~ ~-0.9 ~ run function brown_wool:entity/boss/thunder_spirit/marker_particle1

execute if score @s brown_wool.thunder_spirit2.narrative_marker2 matches 141 unless entity @s[type=marker, tag=brown_wool.thunder_spirit.terrain_2] at @s positioned ~ ~-0.4 ~ as @a[distance=..1.4] at @n[type=marker,tag=brown_wool.thunder_spirit2.narrative_marker] run tp @s ~ ~44.6 ~4














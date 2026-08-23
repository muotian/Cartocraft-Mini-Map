execute positioned ^ ^ ^0.1 as @e[tag=brown_wool.narrative.select0,type=interaction,distance=..0.175] run tag @s add brown_wool.narrative.select

execute positioned ^ ^ ^0.1 if entity @e[tag=brown_wool.narrative.select0,type=interaction,distance=..3] unless entity @e[tag=brown_wool.narrative.select0,type=interaction,distance=..0.175] run function brown_wool:narrative/select









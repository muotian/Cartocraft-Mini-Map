

execute if entity @s[tag=!brown_wool.cangting_general.end] unless entity @e[type=zombie, tag=brown_wool.cangting_general0] unless entity @a[tag=brown_wool.cangting_general.player] run function brown_wool:entity/boss/cangting_general/reset

execute unless entity @e[type=zombie, tag=brown_wool.cangting_general0] if entity @a[tag=brown_wool.cangting_general.player] run tag @s add brown_wool.cangting_general.end


execute if entity @s[tag=brown_wool.cangting_general.end] at @s run function brown_wool:entity/boss/cangting_general/end0

execute as @e[type=marker,tag=brown_wool.cangting_general.end1] at @s run function brown_wool:entity/boss/cangting_general/end1


execute if entity @s[type=marker, tag=brown_wool.cangting_general.terrain_2] at @s run function brown_wool:entity/boss/cangting_general/terrain

execute unless score @s brown_wool.cangting_general.kill matches 3.. run function brown_wool:entity/boss/cangting_general/as_kill

execute as @e[type=zombie, tag=brown_wool.cangting_general0] at @s run function brown_wool:entity/boss/cangting_general/as_monster0


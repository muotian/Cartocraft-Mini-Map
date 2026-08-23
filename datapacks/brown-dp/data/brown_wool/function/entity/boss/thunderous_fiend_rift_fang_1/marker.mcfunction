

execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.end] unless entity @e[type=skeleton, tag=brown_wool.thunderous_fiend_rift_fang0] unless entity @a[tag=brown_wool.thunderous_fiend_rift_fang.player] run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/reset

execute unless entity @e[type=skeleton, tag=brown_wool.thunderous_fiend_rift_fang0] if entity @a[tag=brown_wool.thunderous_fiend_rift_fang.player] run tag @s add brown_wool.thunderous_fiend_rift_fang.end


execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.end] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/end0

execute as @e[type=marker,tag=brown_wool.thunderous_fiend_rift_fang.end1] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/end1


execute if entity @s[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain_2] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/terrain

execute unless score @s brown_wool.thunderous_fiend_rift_fang.kill matches 3.. run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/as_kill


execute as @e[type=skeleton, tag=brown_wool.thunderous_fiend_rift_fang0] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/as_monster0


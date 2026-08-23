
execute if score @s brown_wool.thunderous_fiend_rift_fang_2.cast3.2 matches 1..160 run scoreboard players add @s brown_wool.thunderous_fiend_rift_fang_2.cast3.1 1
scoreboard players add @s brown_wool.thunderous_fiend_rift_fang_2.cast3.2 1

execute if score @s brown_wool.thunderous_fiend_rift_fang_2.cast3.1 matches 2.. as @a[tag=brown_wool.thunderous_fiend_rift_fang.player,distance=8..] at @s facing entity @e[type=skeleton, tag=brown_wool.thunderous_fiend_rift_fang_2,limit=1] feet rotated ~ 0 if block ^ ^ ^1.5 air run tp @s ^ ^ ^1.5


execute if score @s brown_wool.thunderous_fiend_rift_fang_2.cast3.1 matches 2.. run scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang_2.cast3.1


execute if score @s brown_wool.thunderous_fiend_rift_fang_2.cast3.2 matches 1..160 run particle dragon_breath{power:8} ~ ~ ~ 12.0 3.0 12.0 0.1 100 force @a

execute if score @s brown_wool.thunderous_fiend_rift_fang_2.cast3.2 matches 160 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/cast3.1



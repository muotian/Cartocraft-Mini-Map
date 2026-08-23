
# 增加計時器分數

execute unless score @s brown_wool.thunderous_fiend_rift_fang_1.cast5 matches 1.. as @a[tag=brown_wool.thunderous_fiend_rift_fang.player,distance=..5.2] run effect give @s slowness 3 3 true
execute unless score @s brown_wool.thunderous_fiend_rift_fang_1.cast5 matches 1.. as @a[tag=brown_wool.thunderous_fiend_rift_fang.player,distance=..5.2] run playsound entity.evoker.cast_spell player @s
execute unless score @s brown_wool.thunderous_fiend_rift_fang_1.cast5 matches 1.. run particle poof ~ ~1 ~ 0.5 0.5 0.5 0.1 60

execute if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~

scoreboard players add @s brown_wool.thunderous_fiend_rift_fang_1.cast5 1

# 重置記分板
execute if score @s brown_wool.thunderous_fiend_rift_fang_1.cast5 matches 21.. run kill @s


execute at @s rotated ~ 0 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast_particle5


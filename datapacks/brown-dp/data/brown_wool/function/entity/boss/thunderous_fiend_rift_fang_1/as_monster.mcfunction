
# 執行位置：同上




# 增加計時器分數
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.switch] if score @s brown_wool.thunderous_fiend_rift_fang.health matches 1..200 run tag @s add brown_wool.thunderous_fiend_rift_fang.switch
execute unless score @s brown_wool.thunderous_fiend_rift_fang.cd matches 1.. run scoreboard players add @s brown_wool.thunderous_fiend_rift_fang.time 1
execute unless score @s brown_wool.thunderous_fiend_rift_fang.pg_cd matches 1.. if entity @p[distance=..8 ,tag=brown_wool.thunderous_fiend_rift_fang.player] run scoreboard players add @s brown_wool.thunderous_fiend_rift_fang.pg 1


execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.pg] if score @s brown_wool.thunderous_fiend_rift_fang.time matches 200.. run tag @s add brown_wool.thunderous_fiend_rift_fang.cant_move
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.cast] if score @s brown_wool.thunderous_fiend_rift_fang.pg matches 20.. run tag @s add brown_wool.thunderous_fiend_rift_fang.cant_move

# 技能
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.pg] if score @s brown_wool.thunderous_fiend_rift_fang.time matches 200.. run tag @s add brown_wool.thunderous_fiend_rift_fang.cast

# 普攻
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.cast] if score @s brown_wool.thunderous_fiend_rift_fang.pg matches 20.. run tag @s add brown_wool.thunderous_fiend_rift_fang.pg


# 重置記分板
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.pg] if score @s brown_wool.thunderous_fiend_rift_fang.time matches 200.. run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.time 0
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.cast] if score @s brown_wool.thunderous_fiend_rift_fang.pg matches 20.. run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.pg 0

# cd减少
execute if score @s brown_wool.thunderous_fiend_rift_fang.cd matches 1.. run scoreboard players remove @s brown_wool.thunderous_fiend_rift_fang.cd 1
execute if score @s brown_wool.thunderous_fiend_rift_fang.cd matches 1 store result score @s brown_wool.thunderous_fiend_rift_fang.time run random value 30..60
execute unless entity @s[tag=brown_wool.thunderous_fiend_rift_fang.pg] if score @s brown_wool.thunderous_fiend_rift_fang.pg_cd matches 1.. run scoreboard players remove @s brown_wool.thunderous_fiend_rift_fang.pg_cd 1


execute store result score @s brown_wool.thunderous_fiend_rift_fang.health run data get entity @s Health

execute run scoreboard players remove @s brown_wool.thunderous_fiend_rift_fang.health 100

execute store result bossbar brown_wool.thunderous_fiend_rift_fang_1 value run scoreboard players get @s brown_wool.thunderous_fiend_rift_fang.health


execute unless entity @a[tag=brown_wool.thunderous_fiend_rift_fang.player] run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/reset

execute as @e[type=block_display, tag=brown_wool.thunderous_fiend_rift_fang_1.cast1.0] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/as_cast1
execute as @e[type=item_display, tag=brown_wool.thunderous_fiend_rift_fang_1.cast5] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/as_cast5

execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.switch,tag=!brown_wool.thunderous_fiend_rift_fang.cant_move] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/move
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.pg] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/pg
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.cast] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.switch] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/switch




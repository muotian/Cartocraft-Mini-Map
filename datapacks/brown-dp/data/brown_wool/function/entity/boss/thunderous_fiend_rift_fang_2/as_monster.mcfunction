
# 執行位置：同上




# 增加計時器分數
execute if score @s brown_wool.thunderous_fiend_rift_fang.health matches ..0 run tag @s add brown_wool.thunderous_fiend_rift_fang.end
execute unless score @s brown_wool.thunderous_fiend_rift_fang.cd matches 1.. run scoreboard players add @s brown_wool.thunderous_fiend_rift_fang.time 1
execute if score @s brown_wool.thunderous_fiend_rift_fang.health matches 1..200 unless score @s brown_wool.thunderous_fiend_rift_fang.skill_cd matches 1.. run scoreboard players add @s brown_wool.thunderous_fiend_rift_fang.skill_time 1
execute unless score @s brown_wool.thunderous_fiend_rift_fang.pg_cd matches 1.. if entity @p[distance=..8 ,tag=brown_wool.thunderous_fiend_rift_fang.player] run scoreboard players add @s brown_wool.thunderous_fiend_rift_fang.pg 1
execute unless score @s brown_wool.thunderous_fiend_rift_fang.fire_cd matches 1.. if entity @p[distance=8.. ,tag=brown_wool.thunderous_fiend_rift_fang.player] run scoreboard players add @s brown_wool.thunderous_fiend_rift_fang.fire_time 1

execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.pg ,tag=!brown_wool.thunderous_fiend_rift_fang.skill,tag=!brown_wool.thunderous_fiend_rift_fang.fire] if score @s brown_wool.thunderous_fiend_rift_fang.time matches 280.. run tag @s add brown_wool.thunderous_fiend_rift_fang.cant_move
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.pg ,tag=!brown_wool.thunderous_fiend_rift_fang.cast,tag=!brown_wool.thunderous_fiend_rift_fang.fire] if score @s brown_wool.thunderous_fiend_rift_fang.skill_time matches 400.. run tag @s add brown_wool.thunderous_fiend_rift_fang.cant_move
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.cast ,tag=!brown_wool.thunderous_fiend_rift_fang.skill,tag=!brown_wool.thunderous_fiend_rift_fang.fire] if score @s brown_wool.thunderous_fiend_rift_fang.pg matches 20.. run tag @s add brown_wool.thunderous_fiend_rift_fang.cant_move
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.cast ,tag=!brown_wool.thunderous_fiend_rift_fang.skill,tag=!brown_wool.thunderous_fiend_rift_fang.pg] if score @s brown_wool.thunderous_fiend_rift_fang.fire_time matches 20.. run tag @s add brown_wool.thunderous_fiend_rift_fang.cant_move


# 技能
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.pg ,tag=!brown_wool.thunderous_fiend_rift_fang.skill,tag=!brown_wool.thunderous_fiend_rift_fang.fire] if score @s brown_wool.thunderous_fiend_rift_fang.time matches 280.. run tag @s add brown_wool.thunderous_fiend_rift_fang.cast
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.pg ,tag=!brown_wool.thunderous_fiend_rift_fang.cast,tag=!brown_wool.thunderous_fiend_rift_fang.fire] if score @s brown_wool.thunderous_fiend_rift_fang.skill_time matches 400.. run tag @s add brown_wool.thunderous_fiend_rift_fang.skill

# 普攻
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.cast ,tag=!brown_wool.thunderous_fiend_rift_fang.skill,tag=!brown_wool.thunderous_fiend_rift_fang.fire] if score @s brown_wool.thunderous_fiend_rift_fang.pg matches 20.. run tag @s add brown_wool.thunderous_fiend_rift_fang.pg

execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.cast ,tag=!brown_wool.thunderous_fiend_rift_fang.skill,tag=!brown_wool.thunderous_fiend_rift_fang.pg] if score @s brown_wool.thunderous_fiend_rift_fang.fire_time matches 20.. run tag @s add brown_wool.thunderous_fiend_rift_fang.fire



execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.cant_move] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/move


# 重置記分板
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.pg ,tag=!brown_wool.thunderous_fiend_rift_fang.skill,tag=!brown_wool.thunderous_fiend_rift_fang.fire] if score @s brown_wool.thunderous_fiend_rift_fang.time matches 280.. run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.time 0
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.cast ,tag=!brown_wool.thunderous_fiend_rift_fang.skill,tag=!brown_wool.thunderous_fiend_rift_fang.fire] if score @s brown_wool.thunderous_fiend_rift_fang.pg matches 20.. run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.pg 0
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.pg ,tag=!brown_wool.thunderous_fiend_rift_fang.cast,tag=!brown_wool.thunderous_fiend_rift_fang.fire] if score @s brown_wool.thunderous_fiend_rift_fang.skill_time matches 400.. run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.skill_time 0
execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.cast ,tag=!brown_wool.thunderous_fiend_rift_fang.skill ,tag=!brown_wool.thunderous_fiend_rift_fang.pg] if score @s brown_wool.thunderous_fiend_rift_fang.fire_time matches 20.. run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.fire_time 0

# cd减少
execute if score @s brown_wool.thunderous_fiend_rift_fang.cd matches 1.. run scoreboard players remove @s brown_wool.thunderous_fiend_rift_fang.cd 1
execute if score @s brown_wool.thunderous_fiend_rift_fang.cd matches 1 store result score @s brown_wool.thunderous_fiend_rift_fang.time run random value 40..100
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_cd matches 1.. run scoreboard players remove @s brown_wool.thunderous_fiend_rift_fang.skill_cd 1
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_cd matches 1 store result score @s brown_wool.thunderous_fiend_rift_fang.skill_time run random value 60..140
execute unless entity @s[tag=brown_wool.thunderous_fiend_rift_fang.pg] if score @s brown_wool.thunderous_fiend_rift_fang.pg_cd matches 1.. run scoreboard players remove @s brown_wool.thunderous_fiend_rift_fang.pg_cd 1
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_cd matches 1.. run scoreboard players remove @s brown_wool.thunderous_fiend_rift_fang.fire_cd 1


execute store result score @s brown_wool.thunderous_fiend_rift_fang.health run data get entity @s Health

execute run scoreboard players remove @s brown_wool.thunderous_fiend_rift_fang.health 100

execute store result bossbar brown_wool.thunderous_fiend_rift_fang_2 value run scoreboard players get @s brown_wool.thunderous_fiend_rift_fang.health

execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.cant_move] run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]

execute unless entity @s[tag=brown_wool.thunderous_fiend_rift_fang.end] unless entity @a[tag=brown_wool.thunderous_fiend_rift_fang.player] run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/reset

execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.end] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/end

execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang.cant_move] as @e[type=skeleton_horse, tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/move_horse

execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.pg] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/pg
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.cast] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/cast
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.skill] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.cast3] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/as_cast3
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.fire] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/fire

execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2.skill2] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/as_skill2

execute as @e[type=block_display, tag=brown_wool.thunderous_fiend_rift_fang_2.cast1.0] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/as_cast1
execute as @e[type=block_display, tag=brown_wool.thunderous_fiend_rift_fang_2.cast2.0] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/as_cast2
execute as @e[type=block_display, tag=brown_wool.thunderous_fiend_rift_fang_2.cast3.0] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/as_cast3.2
execute as @e[type=blaze, tag=brown_wool.thunderous_fiend_rift_fang_2.cast4.1] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/as_cast4.1
execute as @e[type=breeze, tag=brown_wool.thunderous_fiend_rift_fang_2.cast4.2] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/as_cast4.2
execute as @e[type=block_display, tag=brown_wool.thunderous_fiend_rift_fang_2.cast5.0] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/as_cast5

execute as @e[type=block_display, tag=brown_wool.thunderous_fiend_rift_fang_2.fire0.0] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/as_fire

execute as @e[type=block_display, tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.00] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/as_skill1.1
execute as @e[type=breeze, tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.00] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/as_skill1.1
execute as @e[type=interaction, tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.00] run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/as_skill1.3
execute as @e[type=block_display, tag=brown_wool.thunderous_fiend_rift_fang_2.skill3.0] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/as_skill3


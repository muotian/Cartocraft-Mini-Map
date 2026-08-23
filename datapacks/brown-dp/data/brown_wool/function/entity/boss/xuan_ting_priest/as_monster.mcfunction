# 執行者：
# 執行位置：同上




# 增加計時器分數
execute if score @s brown_wool.xuan_ting_priest.health matches ..0 run tag @s add brown_wool.xuan_ting_priest.end
execute if entity @s[tag=!brown_wool.xuan_ting_priest.switch] if score @s brown_wool.xuan_ting_priest.health matches 1..175 run tag @s add brown_wool.xuan_ting_priest.switch

execute unless score @s brown_wool.xuan_ting_priest.cd matches 1.. run scoreboard players add @s brown_wool.xuan_ting_priest.time 1
execute if score @s brown_wool.xuan_ting_priest.health matches 1..175 unless score @s brown_wool.xuan_ting_priest.skill_cd matches 1.. run scoreboard players add @s brown_wool.xuan_ting_priest.skill_time 1
execute unless score @s brown_wool.xuan_ting_priest.pg_cd matches 1.. if entity @p[distance=..10 ,tag=brown_wool.xuan_ting_priest.player] run scoreboard players add @s brown_wool.xuan_ting_priest.pg 1


execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0 ,tag=!brown_wool.xuan_ting_priest.pg ,tag=!brown_wool.xuan_ting_priest.skill] if score @s brown_wool.xuan_ting_priest.time matches 200.. run tag @s add brown_wool.xuan_ting_priest.cant_move
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0 ,tag=!brown_wool.xuan_ting_priest.pg ,tag=!brown_wool.xuan_ting_priest.cast] if score @s brown_wool.xuan_ting_priest.skill_time matches 400.. run tag @s add brown_wool.xuan_ting_priest.cant_move
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0 ,tag=!brown_wool.xuan_ting_priest.cast ,tag=!brown_wool.xuan_ting_priest.skill] if score @s brown_wool.xuan_ting_priest.pg matches 20.. run tag @s add brown_wool.xuan_ting_priest.cant_move

# 技能
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0 ,tag=!brown_wool.xuan_ting_priest.pg ,tag=!brown_wool.xuan_ting_priest.skill] if score @s brown_wool.xuan_ting_priest.time matches 200.. run tag @s add brown_wool.xuan_ting_priest.cast
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0 ,tag=!brown_wool.xuan_ting_priest.pg ,tag=!brown_wool.xuan_ting_priest.cast] if score @s brown_wool.xuan_ting_priest.skill_time matches 400.. run tag @s add brown_wool.xuan_ting_priest.skill

# 普攻
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0 ,tag=!brown_wool.xuan_ting_priest.cast ,tag=!brown_wool.xuan_ting_priest.skill] if score @s brown_wool.xuan_ting_priest.pg matches 20.. run tag @s add brown_wool.xuan_ting_priest.pg




# 重置記分板
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0 ,tag=!brown_wool.xuan_ting_priest.pg ,tag=!brown_wool.xuan_ting_priest.skill] if score @s brown_wool.xuan_ting_priest.time matches 200.. run scoreboard players set @s brown_wool.xuan_ting_priest.time 0
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0 ,tag=!brown_wool.xuan_ting_priest.cast ,tag=!brown_wool.xuan_ting_priest.skill] if score @s brown_wool.xuan_ting_priest.pg matches 20.. run scoreboard players set @s brown_wool.xuan_ting_priest.pg 0
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0 ,tag=!brown_wool.xuan_ting_priest.pg ,tag=!brown_wool.xuan_ting_priest.cast] if score @s brown_wool.xuan_ting_priest.skill_time matches 400.. run scoreboard players set @s brown_wool.xuan_ting_priest.skill_time 0

# cd减少
execute if score @s brown_wool.xuan_ting_priest.cd matches 1.. run scoreboard players remove @s brown_wool.xuan_ting_priest.cd 1
execute if score @s brown_wool.xuan_ting_priest.cd matches 1 store result score @s brown_wool.xuan_ting_priest.time run random value 40..100
execute if score @s brown_wool.xuan_ting_priest.skill_cd matches 1.. run scoreboard players remove @s brown_wool.xuan_ting_priest.skill_cd 1
execute if score @s brown_wool.xuan_ting_priest.skill_cd matches 1 store result score @s brown_wool.xuan_ting_priest.skill_time run random value 60..140
execute unless entity @s[tag=brown_wool.xuan_ting_priest.pg] if score @s brown_wool.xuan_ting_priest.pg_cd matches 1.. run scoreboard players remove @s brown_wool.xuan_ting_priest.pg_cd 1


execute store result score @s brown_wool.xuan_ting_priest.health run data get entity @s Health

execute run scoreboard players remove @s brown_wool.xuan_ting_priest.health 100

execute store result bossbar brown_wool.xuan_ting_priest value run scoreboard players get @s brown_wool.xuan_ting_priest.health




execute if entity @s[tag=!brown_wool.xuan_ting_priest.end] unless entity @a[tag=brown_wool.xuan_ting_priest.player] run function brown_wool:entity/boss/xuan_ting_priest/reset

execute if entity @s[tag=brown_wool.xuan_ting_priest.switch] at @s run function brown_wool:entity/boss/xuan_ting_priest/switch
execute if entity @s[tag=brown_wool.xuan_ting_priest.end] at @s run function brown_wool:entity/boss/xuan_ting_priest/end

execute if entity @s[tag=!brown_wool.xuan_ting_priest.end] if entity @s[tag=!brown_wool.xuan_ting_priest.cant_move] unless score @s brown_wool.xuan_ting_priest.switch matches 1..159 at @s run function brown_wool:entity/boss/xuan_ting_priest/move
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg] at @s run function brown_wool:entity/boss/xuan_ting_priest/pg
execute if entity @s[tag=brown_wool.xuan_ting_priest.cast] at @s run function brown_wool:entity/boss/xuan_ting_priest/cast
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill] at @s run function brown_wool:entity/boss/xuan_ting_priest/skill


execute if entity @s[tag=brown_wool.xuan_ting_priest.skill2.1] at @s run function brown_wool:entity/boss/xuan_ting_priest/as_skill2.1



execute as @e[type=block_display, tag=brown_wool.xuan_ting_priest.pg0] at @s run function brown_wool:entity/boss/xuan_ting_priest/as_pg

execute as @e[type=block_display, tag=brown_wool.xuan_ting_priest.cast1.0] at @s run function brown_wool:entity/boss/xuan_ting_priest/as_cast1
execute as @e[type=block_display, tag=brown_wool.xuan_ting_priest.cast2] at @s run function brown_wool:entity/boss/xuan_ting_priest/as_cast2
execute as @e[type=block_display, tag=brown_wool.xuan_ting_priest.cast3] at @s run function brown_wool:entity/boss/xuan_ting_priest/as_cast3
execute as @e[type=magma_cube, tag=brown_wool.xuan_ting_priest.cast4.1] at @s run function brown_wool:entity/boss/xuan_ting_priest/as_cast4.1
execute as @e[type=block_display, tag=brown_wool.xuan_ting_priest.cast4.2] at @s run function brown_wool:entity/boss/xuan_ting_priest/as_cast4.2
execute as @e[type=block_display, tag=brown_wool.xuan_ting_priest.cast5] at @s run function brown_wool:entity/boss/xuan_ting_priest/as_cast5
execute as @e[type=block_display, tag=brown_wool.xuan_ting_priest.skill1.0] at @s run function brown_wool:entity/boss/xuan_ting_priest/as_skill1
execute as @e[type=block_display, tag=brown_wool.xuan_ting_priest.skill2.0] at @s run function brown_wool:entity/boss/xuan_ting_priest/as_skill2.2
execute as @e[type=block_display, tag=brown_wool.xuan_ting_priest.skill3.0] at @s run function brown_wool:entity/boss/xuan_ting_priest/as_skill3


# 執行者：蒼霆鎮域大將軍
# 執行位置：同上




# 增加計時器分數
execute if score @s brown_wool.cangting_general.health matches ..0 run tag @s add brown_wool.cangting_general.end
execute unless score @s brown_wool.cangting_general.cd matches 1.. run scoreboard players add @s brown_wool.cangting_general.time 1
execute if entity @s[tag=!brown_wool.cangting_general.switch] if score @s brown_wool.cangting_general.health matches 1..200 run tag @s add brown_wool.cangting_general.switch
execute unless score @s brown_wool.cangting_general.cd matches 1.. run scoreboard players add @s brown_wool.cangting_general.time 1
execute if score @s brown_wool.cangting_general.health matches 1..200 unless score @s brown_wool.cangting_general.skill_cd matches 1.. run scoreboard players add @s brown_wool.cangting_general.skill_time 1
execute unless score @s brown_wool.cangting_general.pg_cd matches 1.. if entity @p[distance=..8 ,tag=brown_wool.cangting_general.player] run scoreboard players add @s brown_wool.cangting_general.pg 1


execute if entity @s[tag=!brown_wool.cangting_general.pg ,tag=!brown_wool.cangting_general.skill] if score @s brown_wool.cangting_general.time matches 280.. run tag @s add brown_wool.cangting_general.cant_move
execute if entity @s[tag=!brown_wool.cangting_general.pg ,tag=!brown_wool.cangting_general.cast] if score @s brown_wool.cangting_general.skill_time matches 400.. run tag @s add brown_wool.cangting_general.cant_move
execute if entity @s[tag=!brown_wool.cangting_general.cast ,tag=!brown_wool.cangting_general.skill] if score @s brown_wool.cangting_general.pg matches 20.. run tag @s add brown_wool.cangting_general.cant_move

# 技能
execute if entity @s[tag=!brown_wool.cangting_general.pg ,tag=!brown_wool.cangting_general.skill] if score @s brown_wool.cangting_general.time matches 280.. run tag @s add brown_wool.cangting_general.cast
execute if entity @s[tag=!brown_wool.cangting_general.pg ,tag=!brown_wool.cangting_general.cast] if score @s brown_wool.cangting_general.skill_time matches 400.. run tag @s add brown_wool.cangting_general.skill

# 普攻
execute if entity @s[tag=!brown_wool.cangting_general.cast ,tag=!brown_wool.cangting_general.skill] if score @s brown_wool.cangting_general.pg matches 20.. run tag @s add brown_wool.cangting_general.pg




execute if entity @s[tag=!brown_wool.cangting_general.cant_move] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if entity @s[tag=!brown_wool.cangting_general.end] run function brown_wool:entity/boss/cangting_general/move


# 重置記分板
execute if entity @s[tag=!brown_wool.cangting_general.pg ,tag=!brown_wool.cangting_general.skill] if score @s brown_wool.cangting_general.time matches 280.. run scoreboard players set @s brown_wool.cangting_general.time 0
execute if entity @s[tag=!brown_wool.cangting_general.cast ,tag=!brown_wool.cangting_general.skill] if score @s brown_wool.cangting_general.pg matches 20.. run scoreboard players set @s brown_wool.cangting_general.pg 0
execute if entity @s[tag=!brown_wool.cangting_general.pg ,tag=!brown_wool.cangting_general.cast] if score @s brown_wool.cangting_general.skill_time matches 400.. run scoreboard players set @s brown_wool.cangting_general.skill_time 0

# cd减少
execute if score @s brown_wool.cangting_general.cd matches 1.. run scoreboard players remove @s brown_wool.cangting_general.cd 1
execute if score @s brown_wool.cangting_general.cd matches 1 store result score @s brown_wool.cangting_general.time run random value 40..100
execute if score @s brown_wool.cangting_general.skill_cd matches 1.. run scoreboard players remove @s brown_wool.cangting_general.skill_cd 1
execute if score @s brown_wool.cangting_general.skill_cd matches 1 store result score @s brown_wool.cangting_general.skill_time run random value 60..140
execute unless entity @s[tag=brown_wool.cangting_general.pg] if score @s brown_wool.cangting_general.pg_cd matches 1.. run scoreboard players remove @s brown_wool.cangting_general.pg_cd 1


execute store result score @s brown_wool.cangting_general.health run data get entity @s Health

execute run scoreboard players remove @s brown_wool.cangting_general.health 100

execute store result bossbar brown_wool.cangting_general value run scoreboard players get @s brown_wool.cangting_general.health

execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if entity @s[tag=!brown_wool.cangting_general.cant_move] run rotate @s facing entity @p[tag=brown_wool.cangting_general.player]




execute if entity @s[tag=!brown_wool.cangting_general.end] unless entity @a[tag=brown_wool.cangting_general.player] run function brown_wool:entity/boss/cangting_general/reset

execute if entity @s[tag=brown_wool.cangting_general.end] at @s run function brown_wool:entity/boss/cangting_general/end

execute if entity @s[tag=brown_wool.cangting_general.switch] at @s run function brown_wool:entity/boss/cangting_general/switch

execute if entity @s[tag=!brown_wool.cangting_general.cant_move] as @e[type=zombie_horse, tag=brown_wool.cangting_general.horse,limit=1] at @s run function brown_wool:entity/boss/cangting_general/move_horse

execute if entity @s[tag=brown_wool.cangting_general.pg] at @s run function brown_wool:entity/boss/cangting_general/pg
execute if entity @s[tag=brown_wool.cangting_general.cast] at @s run function brown_wool:entity/boss/cangting_general/cast
execute if entity @s[tag=brown_wool.cangting_general.skill] at @s run function brown_wool:entity/boss/cangting_general/skill
execute if entity @s[tag=brown_wool.cangting_general.cast2.1] at @s run function brown_wool:entity/boss/cangting_general/as_cast2.1
execute if entity @s[tag=brown_wool.cangting_general.cast3.1] at @s run function brown_wool:entity/boss/cangting_general/as_cast3


execute as @e[type=item_display, tag=brown_wool.cangting_general.cast1.0] at @s run function brown_wool:entity/boss/cangting_general/as_cast1
execute as @e[type=block_display, tag=brown_wool.cangting_general.cast2.0] at @s run function brown_wool:entity/boss/cangting_general/as_cast2.0
execute as @e[type=item_display, tag=brown_wool.cangting_general.cast4.0] at @s run function brown_wool:entity/boss/cangting_general/as_cast4
execute as @e[type=item_display, tag=brown_wool.cangting_general.cast5.0] at @s run function brown_wool:entity/boss/cangting_general/as_cast5

execute as @e[type=item_display, tag=brown_wool.cangting_general.skill1.0] at @s run function brown_wool:entity/boss/cangting_general/as_skill1
execute as @e[type=item_display, tag=brown_wool.cangting_general.skill2.0] at @s run function brown_wool:entity/boss/cangting_general/as_skill2
execute as @e[type=item_display, tag=brown_wool.cangting_general.skill3.0] at @s run function brown_wool:entity/boss/cangting_general/as_skill3



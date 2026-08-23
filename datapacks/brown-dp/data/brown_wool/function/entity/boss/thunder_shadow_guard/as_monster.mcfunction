# 執行者：雙劍雷影衛
# 執行位置：同上




# 增加計時器分數

execute if score @s brown_wool.thunder_shadow_guard.health matches ..0 run tag @s add brown_wool.thunder_shadow_guard.end
execute if entity @s[tag=!brown_wool.thunder_shadow_guard.switch] if score @s brown_wool.thunder_shadow_guard.health matches 1..200 run tag @s add brown_wool.thunder_shadow_guard.switch

execute unless score @s brown_wool.thunder_shadow_guard.cd matches 1.. run scoreboard players add @s brown_wool.thunder_shadow_guard.time 1
execute if score @s brown_wool.thunder_shadow_guard.health matches 1..200 unless score @s brown_wool.thunder_shadow_guard.skill_cd matches 1.. run scoreboard players add @s brown_wool.thunder_shadow_guard.skill_time 1
execute unless score @s brown_wool.thunder_shadow_guard.pg_cd matches 1.. if entity @p[distance=..8 ,tag=brown_wool.thunder_shadow_guard.player] run scoreboard players add @s brown_wool.thunder_shadow_guard.pg 1

execute if entity @s[tag=!brown_wool.thunder_shadow_guard.pg ,tag=!brown_wool.thunder_shadow_guard.skill ] if score @s brown_wool.thunder_shadow_guard.time matches 200.. run tag @s add brown_wool.thunder_shadow_guard.cant_move
execute if entity @s[tag=!brown_wool.thunder_shadow_guard.pg ,tag=!brown_wool.thunder_shadow_guard.cast ] if score @s brown_wool.thunder_shadow_guard.skill_time matches 400.. run tag @s add brown_wool.thunder_shadow_guard.cant_move
execute if entity @s[tag=!brown_wool.thunder_shadow_guard.cast ,tag=!brown_wool.thunder_shadow_guard.skill ] if score @s brown_wool.thunder_shadow_guard.pg matches 20.. run tag @s add brown_wool.thunder_shadow_guard.cant_move

# 技能
execute if entity @s[tag=!brown_wool.thunder_shadow_guard.pg ,tag=!brown_wool.thunder_shadow_guard.skill ] if score @s brown_wool.thunder_shadow_guard.time matches 200.. run tag @s add brown_wool.thunder_shadow_guard.cast
execute if entity @s[tag=!brown_wool.thunder_shadow_guard.pg ,tag=!brown_wool.thunder_shadow_guard.cast ] if score @s brown_wool.thunder_shadow_guard.skill_time matches 400.. run tag @s add brown_wool.thunder_shadow_guard.skill

# 普攻
execute if entity @s[tag=!brown_wool.thunder_shadow_guard.cast ,tag=!brown_wool.thunder_shadow_guard.skill ] if score @s brown_wool.thunder_shadow_guard.pg matches 20.. run tag @s add brown_wool.thunder_shadow_guard.pg


# 如果分數到的，進入預備狀態

# 預備狀態增加計時器分數

# 預備狀態特效

# 重置記分板
execute if entity @s[tag=!brown_wool.thunder_shadow_guard.pg ,tag=!brown_wool.thunder_shadow_guard.skill ] if score @s brown_wool.thunder_shadow_guard.time matches 200.. run scoreboard players set @s brown_wool.thunder_shadow_guard.time 0
execute if entity @s[tag=!brown_wool.thunder_shadow_guard.cast ,tag=!brown_wool.thunder_shadow_guard.skill ] if score @s brown_wool.thunder_shadow_guard.pg matches 20.. run scoreboard players set @s brown_wool.thunder_shadow_guard.pg 0
execute if entity @s[tag=!brown_wool.thunder_shadow_guard.pg ,tag=!brown_wool.thunder_shadow_guard.cast ] if score @s brown_wool.thunder_shadow_guard.skill_time matches 400.. run scoreboard players set @s brown_wool.thunder_shadow_guard.skill_time 0

# cd减少
execute if score @s brown_wool.thunder_shadow_guard.cd matches 1.. run scoreboard players remove @s brown_wool.thunder_shadow_guard.cd 1
execute if score @s brown_wool.thunder_shadow_guard.cd matches 1 store result score @s brown_wool.thunder_shadow_guard.time run random value 60..120
execute if score @s brown_wool.thunder_shadow_guard.skill_cd matches 1.. run scoreboard players remove @s brown_wool.thunder_shadow_guard.skill_cd 1
execute if score @s brown_wool.thunder_shadow_guard.skill_cd matches 1 store result score @s brown_wool.thunder_shadow_guard.skill_time run random value 80..160
execute unless entity @s[tag=brown_wool.thunder_shadow_guard.pg] if score @s brown_wool.thunder_shadow_guard.pg_cd matches 1.. run scoreboard players remove @s brown_wool.thunder_shadow_guard.pg_cd 1


execute store result score @s brown_wool.thunder_shadow_guard.health run data get entity @s Health

execute run scoreboard players remove @s brown_wool.thunder_shadow_guard.health 100


execute store result bossbar brown_wool.thunder_shadow_guard value run scoreboard players get @s brown_wool.thunder_shadow_guard.health

execute if entity @s[tag=!brown_wool.thunder_shadow_guard.end] unless entity @a[tag=brown_wool.thunder_shadow_guard.player] run function brown_wool:entity/boss/thunder_shadow_guard/reset

execute if entity @s[tag=brown_wool.thunder_shadow_guard.switch] at @s run function brown_wool:entity/boss/thunder_shadow_guard/switch
execute if entity @s[tag=brown_wool.thunder_shadow_guard.end] at @s run function brown_wool:entity/boss/thunder_shadow_guard/end

execute if entity @s[tag=!brown_wool.thunder_shadow_guard.end] if entity @s[tag=!brown_wool.thunder_shadow_guard.cant_move] unless score @s brown_wool.thunder_spirit.switch matches 1..239 at @s run function brown_wool:entity/boss/thunder_shadow_guard/move
execute if entity @s[tag=brown_wool.thunder_shadow_guard.pg] at @s run function brown_wool:entity/boss/thunder_shadow_guard/pg
execute if entity @s[tag=brown_wool.thunder_shadow_guard.cast] at @s run function brown_wool:entity/boss/thunder_shadow_guard/cast
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill] at @s run function brown_wool:entity/boss/thunder_shadow_guard/skill
execute if entity @s[tag=brown_wool.thunder_shadow_guard.skill3.1] at @s run function brown_wool:entity/boss/thunder_shadow_guard/as_skill3.1

execute as @e[type=marker,tag=brown_wool.thunder_shadow_guard.cast1.0] at @s run function brown_wool:entity/boss/thunder_shadow_guard/as_cast1.2

execute as @e[type=marker, tag=brown_wool.thunder_shadow_guard.cast3.0] at @s run function brown_wool:entity/boss/thunder_shadow_guard/as_cast3
execute as @e[type=marker, tag=brown_wool.thunder_shadow_guard.cast5.0] at @s run function brown_wool:entity/boss/thunder_shadow_guard/as_cast5

execute as @e[type=wither_skeleton,tag=brown_wool.thunder_shadow_guard.cast1.0] at @s run function brown_wool:entity/boss/thunder_shadow_guard/as_cast1.1

execute as @e[type=wither_skeleton,tag=brown_wool.thunder_shadow_guard.skill3.2] at @s run function brown_wool:entity/boss/thunder_shadow_guard/as_skill3.2

execute as @e[type=wither_skeleton,tag=brown_wool.thunder_shadow_guard.skill2.0] at @s run function brown_wool:entity/boss/thunder_shadow_guard/as_skill2


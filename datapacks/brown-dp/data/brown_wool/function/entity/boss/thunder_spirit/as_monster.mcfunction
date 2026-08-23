
# 執行位置：同上




# 增加計時器分數
execute if score @s brown_wool.thunder_spirit.health1 matches ..0 run tag @s add brown_wool.thunder_spirit.end
execute if entity @s[tag=!brown_wool.thunder_spirit.switch] if score @s brown_wool.thunder_spirit.health1 matches 1..15 run tag @s add brown_wool.thunder_spirit.switch
execute if score @s brown_wool.thunder_spirit.health1 matches 1..15 unless score @s brown_wool.thunder_spirit.skill_cd matches 1.. run scoreboard players add @s brown_wool.thunder_spirit.skill_time 1
execute unless score @s brown_wool.thunder_spirit.cd matches 1.. run scoreboard players add @s brown_wool.thunder_spirit.time 1
execute unless score @s brown_wool.thunder_spirit.pg_cd matches 1.. run scoreboard players add @s brown_wool.thunder_spirit.pg 1

# 技能
execute if entity @s[tag=!brown_wool.thunder_spirit.pg ,tag=!brown_wool.thunder_spirit.skill] if score @s brown_wool.thunder_spirit.time matches 240.. run tag @s add brown_wool.thunder_spirit.cast
execute if entity @s[tag=!brown_wool.thunder_spirit.pg ,tag=!brown_wool.thunder_spirit.cast] if score @s brown_wool.thunder_spirit.skill_time matches 480.. run tag @s add brown_wool.thunder_spirit.skill

# 普攻
execute if entity @s[tag=!brown_wool.thunder_spirit.cast ,tag=!brown_wool.thunder_spirit.skill] if score @s brown_wool.thunder_spirit.pg matches 40.. run tag @s add brown_wool.thunder_spirit.pg


# 重置記分板
execute if entity @s[tag=!brown_wool.thunder_spirit.pg ,tag=!brown_wool.thunder_spirit.skill] if score @s brown_wool.thunder_spirit.time matches 240.. run scoreboard players set @s brown_wool.thunder_spirit.time 0
execute if entity @s[tag=!brown_wool.thunder_spirit.cast ,tag=!brown_wool.thunder_spirit.skill] if score @s brown_wool.thunder_spirit.pg matches 40.. run scoreboard players set @s brown_wool.thunder_spirit.pg 0
execute if entity @s[tag=!brown_wool.thunder_spirit.pg ,tag=!brown_wool.thunder_spirit.cast] if score @s brown_wool.thunder_spirit.skill_time matches 480.. run scoreboard players set @s brown_wool.thunder_spirit.skill_time 0

# cd减少
execute if score @s brown_wool.thunder_spirit.cd matches 1.. run scoreboard players remove @s brown_wool.thunder_spirit.cd 1
execute if score @s brown_wool.thunder_spirit.cd matches 1 store result score @s brown_wool.thunder_spirit.time run random value 40..80
execute if score @s brown_wool.thunder_spirit.skill_cd matches 1.. run scoreboard players remove @s brown_wool.thunder_spirit.skill_cd 1
execute if score @s brown_wool.thunder_spirit.skill_cd matches 1 store result score @s brown_wool.thunder_spirit.skill_time run random value 60..100
execute unless entity @s[tag=brown_wool.thunder_spirit.pg] if score @s brown_wool.thunder_spirit.pg_cd matches 1.. run scoreboard players remove @s brown_wool.thunder_spirit.pg_cd 1



execute store result score @s brown_wool.thunder_spirit.health1 run data get entity @e[type=vex,tag=brown_wool.thunder_spirit2,limit=1] Health

execute run scoreboard players remove @s brown_wool.thunder_spirit.health1 100

execute unless entity @e[type=marker,tag=brown_wool.thunder_spirit.terrain_3] store result bossbar brown_wool.thunder_spirit value run scoreboard players get @s brown_wool.thunder_spirit.health1
execute if entity @e[type=marker,tag=brown_wool.thunder_spirit.terrain_3] store result bossbar brown_wool.thunder_spirit2 value run scoreboard players get @s brown_wool.thunder_spirit.health1




execute unless entity @s[tag=brown_wool.thunder_spirit.end] unless entity @a[tag=brown_wool.thunder_spirit.player] run function brown_wool:entity/boss/thunder_spirit/reset


execute if entity @s[tag=brown_wool.thunder_spirit.end] at @s run function brown_wool:entity/boss/thunder_spirit/end

execute if entity @s[tag=brown_wool.thunder_spirit.switch] at @s run function brown_wool:entity/boss/thunder_spirit/switch

execute if entity @s[tag=brown_wool.thunder_spirit.pg] at @s run function brown_wool:entity/boss/thunder_spirit/pg
execute if entity @s[tag=brown_wool.thunder_spirit.cast] at @s run function brown_wool:entity/boss/thunder_spirit/cast
execute if entity @s[tag=brown_wool.thunder_spirit.skill] at @s run function brown_wool:entity/boss/thunder_spirit/skill



execute as @e[type=block_display, tag=brown_wool.thunder_spirit.attack0] at @s run function brown_wool:entity/boss/thunder_spirit/as_attack

execute as @e[type=block_display, tag=brown_wool.thunder_spirit.call0] at @s run function brown_wool:entity/boss/thunder_spirit/as_call

execute as @e[tag=brown_wool.thunder_spirit.biological0] at @s run function brown_wool:entity/boss/thunder_spirit/as_biological

execute as @e[type=block_display, tag=brown_wool.thunder_spirit.pg0] at @s run function brown_wool:entity/boss/thunder_spirit/as_pg


execute as @e[type=block_display, tag=brown_wool.thunder_spirit.cast1.0] at @s run function brown_wool:entity/boss/thunder_spirit/as_cast1
execute as @e[type=block_display, tag=brown_wool.thunder_spirit.cast2.0] at @s run function brown_wool:entity/boss/thunder_spirit/as_cast2
execute as @e[type=block_display, tag=brown_wool.thunder_spirit.cast3.0] at @s run function brown_wool:entity/boss/thunder_spirit/as_cast3

execute as @e[type=block_display, tag=brown_wool.thunder_spirit.skill1.0] at @s run function brown_wool:entity/boss/thunder_spirit/as_skill1

execute as @e[type=block_display, tag=brown_wool.thunder_spirit.skill2.0] at @s run function brown_wool:entity/boss/thunder_spirit/as_skill2

execute as @e[type=block_display, tag=brown_wool.thunder_spirit.skill3.0] at @s run function brown_wool:entity/boss/thunder_spirit/as_skill3.1
execute as @e[type=item_display, tag=brown_wool.thunder_spirit.skill3.0] at @s run function brown_wool:entity/boss/thunder_spirit/as_skill3.2


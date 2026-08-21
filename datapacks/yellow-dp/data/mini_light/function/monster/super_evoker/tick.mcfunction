# dark_spark
execute as @e[tag=mini_light.dark_spark] at @s run function mini_light:monster/super_evoker/dark_spark/spark_move

# dark_chain
execute as @e[tag=mini_light.dark_chain_hook] at @s run function mini_light:monster/super_evoker/dark_chain/chain_move

# dark_cloud
execute as @e[type=area_effect_cloud,tag=mini_light.dark_cloud] at @s run function mini_light:monster/super_evoker/dark_cloud/particle
execute as @e[type=area_effect_cloud,tag=mini_light.dark_cloud,scores={mini_light.duration=22}] run data modify entity @s RadiusPerTick set value 0.0f

# 他要免疫凋零
effect clear @e[type=evoker,tag=mini_light.super_evoker]

# 換模者放技能
scoreboard players set @e[type=evoker,tag=mini_light.super_evoker] mini_light.super_evoker_fangs 0
scoreboard players set @e[type=evoker,tag=mini_light.super_evoker] mini_light.super_evoker_vex 0
execute as @e[type=minecraft:evoker_fangs,tag=!mini_light.super_checked] at @s on origin run scoreboard players add @s[tag=mini_light.super_evoker] mini_light.super_evoker_fangs 1
execute as @e[type=minecraft:vex,tag=!mini_light.super_checked] at @s on origin run scoreboard players add @s[tag=mini_light.super_evoker] mini_light.super_evoker_vex 1
tag @e[type=evoker_fangs] add mini_light.super_checked
tag @e[type=vex] add mini_light.super_checked
execute as @e[type=evoker,tag=mini_light.super_evoker,scores={mini_light.super_evoker_vex=1..}] at @s run function mini_light:monster/super_evoker/dark_spark/cast
execute as @e[type=evoker,tag=mini_light.super_evoker,scores={mini_light.super_evoker_fangs=1..}] at @s unless entity @p[distance=..3.5] run function mini_light:monster/super_evoker/dark_chain/cast
execute as @e[type=evoker,tag=mini_light.super_evoker,scores={mini_light.super_evoker_fangs=1..}] at @s if entity @p[distance=..3.5] run function mini_light:monster/super_evoker/dark_cloud/cast
execute as @e[type=vex,tag=mini_light.super_checked] if function mini_light:monster/super_evoker/is_from_super_evoker run kill @s
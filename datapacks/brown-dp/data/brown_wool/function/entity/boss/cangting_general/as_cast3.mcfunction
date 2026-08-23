# 執行者：技能3
# 執行位置：同上

# 增加計時器分數


execute unless entity @s[tag=brown_wool.cangting_general.cast3.4] run rotate @s facing entity @p[tag=brown_wool.cangting_general.player,tag=!brown_wool.cangting_general.cast3.2]
execute unless entity @s[tag=brown_wool.cangting_general.cast3.4] as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s run rotate @s facing entity @p[tag=brown_wool.cangting_general.player,tag=!brown_wool.cangting_general.cast3.2]

execute unless entity @s[tag=brown_wool.cangting_general.cast3.4] if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 if block ^ ^ ^0.3 air run tp @s ^ ^ ^0.3

execute unless entity @s[tag=brown_wool.cangting_general.cast3.4] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 if block ^ ^ ^0.24 air run tp @s ^ ^ ^0.24

# 產生粒子效果
execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 positioned ~ ~0.5 ~ run function brown_wool:entity/boss/cangting_general/cast_particle3

execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^0.2 ^1 0.0 0.0 0.0 0.1 0
execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run particle dust{color:[0, 0.66, 0.88],scale:4.0} ^ ^0.7 ^0.8 0.0 0.0 0.0 0.1 0
execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^1.2 ^0.6 0.0 0.0 0.0 0.1 0
execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run particle dust{color:[0, 0.66, 0.88],scale:4.0} ^ ^1.7 ^0.4 0.0 0.0 0.0 0.1 0
execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^2.2 ^0.2 0.0 0.0 0.0 0.1 0

execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 positioned ~ ~0.5 ~ run function brown_wool:entity/boss/cangting_general/cast_particle3

execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^0.2 ^1 0.0 0.0 0.0 0.1 0
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 run particle dust{color:[0, 0.66, 0.88],scale:4.0} ^ ^0.7 ^0.8 0.0 0.0 0.0 0.1 0
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^1.2 ^0.6 0.0 0.0 0.0 0.1 0
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 run particle dust{color:[0, 0.66, 0.88],scale:4.0} ^ ^1.7 ^0.4 0.0 0.0 0.0 0.1 0
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^2.2 ^0.2 0.0 0.0 0.0 0.1 0

execute unless entity @s[tag=brown_wool.cangting_general.cast3.4] if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 positioned ^ ^1 ^1.8 as @a[distance=..2.3,tag=brown_wool.cangting_general.player,tag=!brown_wool.cangting_general.cast3.2] run damage @s 14 brown_wool:lightning_bolt
execute unless entity @s[tag=brown_wool.cangting_general.cast3.4] if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 positioned ^ ^1 ^1.8 as @a[distance=..2.3,tag=brown_wool.cangting_general.player,tag=!brown_wool.cangting_general.cast3.2] run tag @s add brown_wool.cangting_general.cast3.2

execute unless entity @s[tag=brown_wool.cangting_general.cast3.4] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 positioned ^ ^1 ^2 as @a[distance=..2,tag=brown_wool.cangting_general.player,tag=!brown_wool.cangting_general.cast3.2] run damage @s 14 brown_wool:lightning_bolt
execute unless entity @s[tag=brown_wool.cangting_general.cast3.4] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 positioned ^ ^1 ^2 as @a[distance=..2,tag=brown_wool.cangting_general.player,tag=!brown_wool.cangting_general.cast3.2] run tag @s add brown_wool.cangting_general.cast3.2

# 效果
execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @a[tag=brown_wool.cangting_general.cast3.2] at @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] rotated ~ 0 run tp @s ^ ^1 ^3
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @a[tag=brown_wool.cangting_general.cast3.2] at @e[type=zombie ,tag=brown_wool.cangting_general,limit=1] rotated ~ 0 run tp @s ^ ^1 ^3


execute as @a[tag=brown_wool.cangting_general.cast3.2] run damage @s 1 brown_wool:lightning_bolt

execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @a[tag=brown_wool.cangting_general.cast3.3] at @s rotated as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] rotated ~ 0 if block ^ ^ ^1.2 air run tp @s ^ ^ ^1.2
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @a[tag=brown_wool.cangting_general.cast3.3] at @s rotated as @e[type=zombie ,tag=brown_wool.cangting_general,limit=1] rotated ~ 0 if block ^ ^ ^1.2 air run tp @s ^ ^ ^1.2

execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @a[tag=brown_wool.cangting_general.cast3.3] at @s rotated as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] rotated ~ 0 unless block ^ ^ ^1.2 air run effect give @s slowness 5 255 true
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @a[tag=brown_wool.cangting_general.cast3.3] at @s rotated as @e[type=zombie ,tag=brown_wool.cangting_general,limit=1] rotated ~ 0 unless block ^ ^ ^1.2 air run effect give @s slowness 5 255 true

execute if entity @s[tag=brown_wool.cangting_general.cast3.5] if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 if block ^ ^ ^1.6 air run tp @s ^ ^ ^1.6

execute if entity @s[tag=brown_wool.cangting_general.cast3.5] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 if block ^ ^ ^1.6 air run tp @s ^ ^ ^1.6


execute if entity @s[tag=brown_wool.cangting_general.cast3.5] if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 unless block ^ ^ ^1.6 air as @a[distance=..5,tag=brown_wool.cangting_general.player] run damage @s 16 brown_wool:bypasses_cooldown by @e[type=zombie, tag=brown_wool.cangting_general,limit=1]
execute if entity @s[tag=brown_wool.cangting_general.cast3.5] if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 unless block ^ ^ ^1.6 air as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.cangting_general.cast3.5] if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 unless block ^ ^ ^1.6 air run particle explosion ~ ~ ~ 1.2 1.2 1.2 0.1 30
execute if score @s brown_wool.cangting_general.cast matches 4.. if entity @s[tag=brown_wool.cangting_general.cast3.5] if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 unless block ^ ^ ^1.6 air run scoreboard players set @e[type=zombie, tag=brown_wool.cangting_general,limit=1] brown_wool.cangting_general.cast 3


execute if entity @s[tag=brown_wool.cangting_general.cast3.5] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 unless block ^ ^ ^1.2 air as @a[distance=..5,tag=brown_wool.cangting_general.player] run damage @s 16 brown_wool:bypasses_cooldown by @e[type=zombie, tag=brown_wool.cangting_general,limit=1]
execute if entity @s[tag=brown_wool.cangting_general.cast3.5] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 unless block ^ ^ ^1.2 air as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.cangting_general.cast3.5] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 unless block ^ ^ ^1.2 air run particle explosion ~ ~ ~ 1.2 1.2 1.2 0.1 30
execute if score @s brown_wool.cangting_general.cast matches 4.. if entity @s[tag=brown_wool.cangting_general.cast3.5] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 unless block ^ ^ ^1.2 air run scoreboard players set @s brown_wool.cangting_general.cast 3


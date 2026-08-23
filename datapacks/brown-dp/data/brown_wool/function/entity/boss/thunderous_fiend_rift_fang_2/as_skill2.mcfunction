# 執行者：技能2
# 執行位置：同上

# 增加計時器分數

scoreboard players add @s brown_wool.thunderous_fiend_rift_fang_2.skill2 1

execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 1..41 as @e[type=skeleton_horse ,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]


execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 1..41 run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]

execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 1..50 as @e[type=skeleton_horse ,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s rotated ~ 0 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill_particle2.1

execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 1..50 rotated ~ 0 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill_particle2.1


execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. as @e[type=skeleton_horse ,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s rotated ~ 0 if block ^ ^ ^5 air run tp @s ^ ^ ^5

execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. at @s rotated ~ 0 if block ^ ^ ^3 air run tp @s ^ ^ ^3

execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. as @e[type=skeleton_horse ,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s rotated ~ 0 unless block ^ ^ ^5 air run scoreboard players reset @e[type=skeleton,tag=brown_wool.thunderous_fiend_rift_fang_2,limit=1] brown_wool.thunderous_fiend_rift_fang_2.skill2

execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. at @s rotated ~ 0 unless block ^ ^ ^3 air run scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang_2.skill2

execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. as @e[type=skeleton_horse ,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s rotated ~ 0 unless block ^ ^ ^4 air run scoreboard players reset @e[type=skeleton,tag=brown_wool.thunderous_fiend_rift_fang_2,limit=1] brown_wool.thunderous_fiend_rift_fang_2.skill2

execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. at @s rotated ~ 0 unless block ^ ^ ^2 air run scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang_2.skill2

execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. as @e[type=skeleton_horse ,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s rotated ~ 0 unless block ^ ^ ^3 air run scoreboard players reset @e[type=skeleton,tag=brown_wool.thunderous_fiend_rift_fang_2,limit=1] brown_wool.thunderous_fiend_rift_fang_2.skill2

execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. at @s rotated ~ 0 unless block ^ ^ ^1 air run scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang_2.skill2

execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. as @e[type=skeleton_horse ,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s rotated ~ 0 unless block ^ ^ ^2 air run scoreboard players reset @e[type=skeleton,tag=brown_wool.thunderous_fiend_rift_fang_2,limit=1] brown_wool.thunderous_fiend_rift_fang_2.skill2

execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. as @e[type=skeleton_horse ,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s rotated ~ 0 unless block ^ ^ ^1 air run scoreboard players reset @e[type=skeleton,tag=brown_wool.thunderous_fiend_rift_fang_2,limit=1] brown_wool.thunderous_fiend_rift_fang_2.skill2


execute if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. run particle dragon_breath{power:3} ~ ~ ~ 3 3 3 0.1 20


execute if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} at @e[type=skeleton_horse ,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] as @a[distance=..5.2,tag=brown_wool.thunderous_fiend_rift_fang.player] run damage @s 18 brown_wool:lightning_bolt
execute if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @a[distance=..5.2,tag=brown_wool.thunderous_fiend_rift_fang.player] run damage @s 18 brown_wool:lightning_bolt



execute if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=skeleton_horse ,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^0.2 ^1 0.0 0.0 0.0 0.1 0
execute if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=skeleton_horse ,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s rotated ~ 0 run particle dust{color:[0, 0.66, 0.88],scale:4.0} ^ ^0.7 ^0.8 0.0 0.0 0.0 0.1 0
execute if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=skeleton_horse ,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^1.2 ^0.6 0.0 0.0 0.0 0.1 0
execute if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=skeleton_horse ,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s rotated ~ 0 run particle dust{color:[0, 0.66, 0.88],scale:4.0} ^ ^1.7 ^0.4 0.0 0.0 0.0 0.1 0
execute if score @s brown_wool.thunderous_fiend_rift_fang_2.skill2 matches 51.. if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=skeleton_horse ,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^2.2 ^0.2 0.0 0.0 0.0 0.1 0

execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^0.2 ^1 0.0 0.0 0.0 0.1 0
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 run particle dust{color:[0, 0.66, 0.88],scale:4.0} ^ ^0.7 ^0.8 0.0 0.0 0.0 0.1 0
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^1.2 ^0.6 0.0 0.0 0.0 0.1 0
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 run particle dust{color:[0, 0.66, 0.88],scale:4.0} ^ ^1.7 ^0.4 0.0 0.0 0.0 0.1 0
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^2.2 ^0.2 0.0 0.0 0.0 0.1 0


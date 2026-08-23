# 執行者：技能2
# 執行位置：同上

# 增加計時器分數

scoreboard players add @s brown_wool.cangting_general.cast2 1
#scoreboard players add @s brown_wool.cangting_general.cast2.3 1
scoreboard players remove @s[scores={brown_wool.cangting_general.cast2.2=1..}] brown_wool.cangting_general.cast2.2 1


execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} run rotate @s facing entity @p[tag=brown_wool.cangting_general.player]

execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2 matches 1 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run function brown_wool:entity/boss/cangting_general/cast2.1
execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2 matches 11 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run function brown_wool:entity/boss/cangting_general/cast2.1
execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2 matches 21 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run function brown_wool:entity/boss/cangting_general/cast2.1

execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2 matches 1 rotated ~ 0 run function brown_wool:entity/boss/cangting_general/cast2.1
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2 matches 11 rotated ~ 0 run function brown_wool:entity/boss/cangting_general/cast2.1
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2 matches 21 rotated ~ 0 run function brown_wool:entity/boss/cangting_general/cast2.1

execute unless entity @s[tag=brown_wool.cangting_general.cast2.2] unless entity @s[tag=brown_wool.cangting_general.cast2.3] if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2 matches 30.. as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run tp @s ^ ^ ^2

execute unless entity @s[tag=brown_wool.cangting_general.cast2.2] unless entity @s[tag=brown_wool.cangting_general.cast2.3] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2 matches 30.. rotated ~ 0 run tp @s ^ ^ ^1.5

execute unless entity @s[tag=brown_wool.cangting_general.cast2.2] unless entity @s[tag=brown_wool.cangting_general.cast2.3] if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2 matches 30.. as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] rotated ~ 0 unless block ^ ^ ^2 air run tag @e[type=zombie, tag=brown_wool.cangting_general,limit=1] add brown_wool.cangting_general.cast2.2
execute unless entity @s[tag=brown_wool.cangting_general.cast2.2] unless entity @s[tag=brown_wool.cangting_general.cast2.3] if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2 matches 30.. as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] rotated ~ 0 unless block ^ ^ ^1.5 air run tag @e[type=zombie, tag=brown_wool.cangting_general,limit=1] add brown_wool.cangting_general.cast2.2
execute unless entity @s[tag=brown_wool.cangting_general.cast2.2] unless entity @s[tag=brown_wool.cangting_general.cast2.3] if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2 matches 30.. as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] rotated ~ 0 unless block ^ ^ ^1 air run tag @e[type=zombie, tag=brown_wool.cangting_general,limit=1] add brown_wool.cangting_general.cast2.2
execute unless entity @s[tag=brown_wool.cangting_general.cast2.2] unless entity @s[tag=brown_wool.cangting_general.cast2.3] if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2 matches 30.. as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] rotated ~ 0 unless block ^ ^ ^0.5 air run tag @e[type=zombie, tag=brown_wool.cangting_general,limit=1] add brown_wool.cangting_general.cast2.2

execute unless entity @s[tag=brown_wool.cangting_general.cast2.2] unless entity @s[tag=brown_wool.cangting_general.cast2.3] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2 matches 30.. rotated ~ 0 unless block ^ ^ ^2 air run tag @s add brown_wool.cangting_general.cast2.3
execute unless entity @s[tag=brown_wool.cangting_general.cast2.2] unless entity @s[tag=brown_wool.cangting_general.cast2.3] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2 matches 30.. rotated ~ 0 unless block ^ ^ ^1.5 air run tag @s add brown_wool.cangting_general.cast2.3
execute unless entity @s[tag=brown_wool.cangting_general.cast2.2] unless entity @s[tag=brown_wool.cangting_general.cast2.3] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2 matches 30.. rotated ~ 0 unless block ^ ^ ^1 air run tag @s add brown_wool.cangting_general.cast2.3
execute unless entity @s[tag=brown_wool.cangting_general.cast2.2] unless entity @s[tag=brown_wool.cangting_general.cast2.3] unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2 matches 30.. rotated ~ 0 unless block ^ ^ ^0.5 air run tag @s add brown_wool.cangting_general.cast2.3



execute if entity @s[tag=brown_wool.cangting_general.cast2.2] if score @s brown_wool.cangting_general.cast2_random matches 1.. unless score @s brown_wool.cangting_general.cast2.2 matches 1.. run tag @s remove brown_wool.cangting_general.cast2.2
execute if entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 1.. unless score @s brown_wool.cangting_general.cast2.2 matches 1.. run tag @s remove brown_wool.cangting_general.cast2.3

execute unless entity @s[tag=brown_wool.cangting_general.cast2.2] unless entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 1.. run scoreboard players reset @s brown_wool.cangting_general.cast2_random


execute if entity @s[tag=brown_wool.cangting_general.cast2.2] unless score @s brown_wool.cangting_general.cast2_random matches 1.. store result score @s brown_wool.cangting_general.cast2_random run random value 1..12
execute if entity @s[tag=brown_wool.cangting_general.cast2.3] unless score @s brown_wool.cangting_general.cast2_random matches 1.. store result score @s brown_wool.cangting_general.cast2_random run random value 1..12

execute if entity @s[tag=brown_wool.cangting_general.cast2.2] if score @s brown_wool.cangting_general.cast2_random matches 1.. unless score @s brown_wool.cangting_general.cast2.2 matches 1.. run scoreboard players set @s brown_wool.cangting_general.cast2.2 10
execute if entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 1.. unless score @s brown_wool.cangting_general.cast2.2 matches 1.. run scoreboard players set @s brown_wool.cangting_general.cast2.2 10

execute if entity @s[tag=brown_wool.cangting_general.cast2.2] if score @s brown_wool.cangting_general.cast2_random matches 1 if score @s brown_wool.cangting_general.cast2.2 matches 10 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.4,limit=1] run tp @s ~ ~-2 ~-1

execute if entity @s[tag=brown_wool.cangting_general.cast2.2] if score @s brown_wool.cangting_general.cast2_random matches 2 if score @s brown_wool.cangting_general.cast2.2 matches 10 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.5,limit=1] run tp @s ~ ~-2 ~-1

execute if entity @s[tag=brown_wool.cangting_general.cast2.2] if score @s brown_wool.cangting_general.cast2_random matches 3 if score @s brown_wool.cangting_general.cast2.2 matches 10 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.6,limit=1] run tp @s ~ ~-2 ~-1

execute if entity @s[tag=brown_wool.cangting_general.cast2.2] if score @s brown_wool.cangting_general.cast2_random matches 4 if score @s brown_wool.cangting_general.cast2.2 matches 10 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.7,limit=1] run tp @s ~-1 ~-2 ~

execute if entity @s[tag=brown_wool.cangting_general.cast2.2] if score @s brown_wool.cangting_general.cast2_random matches 5 if score @s brown_wool.cangting_general.cast2.2 matches 10 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.8,limit=1] run tp @s ~-1 ~-2 ~

execute if entity @s[tag=brown_wool.cangting_general.cast2.2] if score @s brown_wool.cangting_general.cast2_random matches 6 if score @s brown_wool.cangting_general.cast2.2 matches 10 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.9,limit=1] run tp @s ~-1 ~-2 ~

execute if entity @s[tag=brown_wool.cangting_general.cast2.2] if score @s brown_wool.cangting_general.cast2_random matches 7 if score @s brown_wool.cangting_general.cast2.2 matches 10 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.10,limit=1] run tp @s ~1 ~-2 ~

execute if entity @s[tag=brown_wool.cangting_general.cast2.2] if score @s brown_wool.cangting_general.cast2_random matches 8 if score @s brown_wool.cangting_general.cast2.2 matches 10 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.11,limit=1] run tp @s ~1 ~-2 ~

execute if entity @s[tag=brown_wool.cangting_general.cast2.2] if score @s brown_wool.cangting_general.cast2_random matches 9 if score @s brown_wool.cangting_general.cast2.2 matches 10 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.12,limit=1] run tp @s ~1 ~-2 ~

execute if entity @s[tag=brown_wool.cangting_general.cast2.2] if score @s brown_wool.cangting_general.cast2_random matches 10 if score @s brown_wool.cangting_general.cast2.2 matches 10 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.13,limit=1] run tp @s ~ ~-2 ~1

execute if entity @s[tag=brown_wool.cangting_general.cast2.2] if score @s brown_wool.cangting_general.cast2_random matches 11 if score @s brown_wool.cangting_general.cast2.2 matches 10 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.14,limit=1] run tp @s ~ ~-2 ~1

execute if entity @s[tag=brown_wool.cangting_general.cast2.2] if score @s brown_wool.cangting_general.cast2_random matches 12 if score @s brown_wool.cangting_general.cast2.2 matches 10 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.15,limit=1] run tp @s ~ ~-2 ~1

execute if entity @s[tag=brown_wool.cangting_general.cast2.2] if score @s brown_wool.cangting_general.cast2_random matches 1.. if score @s brown_wool.cangting_general.cast2.2 matches 8 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s run rotate @s facing entity @r[tag=brown_wool.cangting_general.player]
execute if entity @s[tag=brown_wool.cangting_general.cast2.2] if score @s brown_wool.cangting_general.cast2_random matches 1.. if score @s brown_wool.cangting_general.cast2.2 matches 3 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run function brown_wool:entity/boss/cangting_general/cast2.1



execute if entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 1 if score @s brown_wool.cangting_general.cast2.2 matches 10 at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.5,limit=1] run tp @s ~ ~-2 ~-1

execute if entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 2 if score @s brown_wool.cangting_general.cast2.2 matches 10 at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.5,limit=1] run tp @s ~ ~-2 ~-1

execute if entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 3 if score @s brown_wool.cangting_general.cast2.2 matches 10 at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.6,limit=1] run tp @s ~ ~-2 ~-1

execute if entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 4 if score @s brown_wool.cangting_general.cast2.2 matches 10 at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.7,limit=1] run tp @s ~-1 ~-2 ~

execute if entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 5 if score @s brown_wool.cangting_general.cast2.2 matches 10 at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.8,limit=1] run tp @s ~-1 ~-2 ~

execute if entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 6 if score @s brown_wool.cangting_general.cast2.2 matches 10 at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.9,limit=1] run tp @s ~-1 ~-2 ~

execute if entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 7 if score @s brown_wool.cangting_general.cast2.2 matches 10 at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.10,limit=1] run tp @s ~1 ~-2 ~

execute if entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 8 if score @s brown_wool.cangting_general.cast2.2 matches 10 at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.11,limit=1] run tp @s ~1 ~-2 ~

execute if entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 9 if score @s brown_wool.cangting_general.cast2.2 matches 10 at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.12,limit=1] run tp @s ~1 ~-2 ~

execute if entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 10 if score @s brown_wool.cangting_general.cast2.2 matches 10 at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.13,limit=1] run tp @s ~ ~-2 ~1

execute if entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 11 if score @s brown_wool.cangting_general.cast2.2 matches 10 at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.14,limit=1] run tp @s ~ ~-2 ~1

execute if entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 12 if score @s brown_wool.cangting_general.cast2.2 matches 10 at @e[type=block_display ,tag=brown_wool.cangting_general.cast2.15,limit=1] run tp @s ~ ~-2 ~1

execute if entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 1.. if score @s brown_wool.cangting_general.cast2.2 matches 8 run rotate @s facing entity @r[tag=brown_wool.cangting_general.player]
execute if entity @s[tag=brown_wool.cangting_general.cast2.3] if score @s brown_wool.cangting_general.cast2_random matches 1.. if score @s brown_wool.cangting_general.cast2.2 matches 3 rotated ~ 0 run function brown_wool:entity/boss/cangting_general/cast2.1

execute if score @s brown_wool.cangting_general.cast2 matches 21.. if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} at @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] as @a[distance=..1.8,tag=brown_wool.cangting_general.player] run damage @s 12 brown_wool:lightning_bolt
execute if score @s brown_wool.cangting_general.cast2 matches 21.. unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @a[distance=..1.8,tag=brown_wool.cangting_general.player] run damage @s 12 brown_wool:lightning_bolt

#execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2.3 matches 20..40 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run function brown_wool:entity/boss/cangting_general/cast2.2
#execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2.3 matches 40 as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run particle sweep_attack ~ ~ ~ 1.8 1 1.8 0.1 100
#execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2.3 matches 40 at @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] as @a[distance=..5.2,tag=brown_wool.cangting_general.player] run damage @s 30 brown_wool:lightning_bolt


#execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2.3 matches 20..40 rotated ~ 0 run function brown_wool:entity/boss/cangting_general/cast2.2
#execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2.3 matches 40 rotated ~ 0 run particle sweep_attack ~ ~ ~ 1.8 1 1.8 0.1 100
#execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} if score @s brown_wool.cangting_general.cast2.3 matches 40 as @a[distance=..5.2,tag=brown_wool.cangting_general.player] run damage @s 25 brown_wool:lightning_bolt

execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^0.2 ^1 0.0 0.0 0.0 0.1 0
execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run particle dust{color:[0, 0.66, 0.88],scale:4.0} ^ ^0.7 ^0.8 0.0 0.0 0.0 0.1 0
execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^1.2 ^0.6 0.0 0.0 0.0 0.1 0
execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run particle dust{color:[0, 0.66, 0.88],scale:4.0} ^ ^1.7 ^0.4 0.0 0.0 0.0 0.1 0
execute if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^2.2 ^0.2 0.0 0.0 0.0 0.1 0

execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^0.2 ^1 0.0 0.0 0.0 0.1 0
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 run particle dust{color:[0, 0.66, 0.88],scale:4.0} ^ ^0.7 ^0.8 0.0 0.0 0.0 0.1 0
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^1.2 ^0.6 0.0 0.0 0.0 0.1 0
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 run particle dust{color:[0, 0.66, 0.88],scale:4.0} ^ ^1.7 ^0.4 0.0 0.0 0.0 0.1 0
execute unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} rotated ~ 0 run particle dust{color:[0.71, 0.18, 0.96],scale:4.0} ^ ^2.2 ^0.2 0.0 0.0 0.0 0.1 0

#execute if score @s brown_wool.cangting_general.cast2.3 matches 40 run scoreboard players reset @s brown_wool.cangting_general.cast2.3


# 執行位置：同上

# skill: 施放技能

execute unless score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 1.. store result score @s brown_wool.thunderous_fiend_rift_fang.skill_random run random value 1..3


execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 1 unless score @s brown_wool.thunderous_fiend_rift_fang.skill matches 1.. run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.skill 205
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 2 unless score @s brown_wool.thunderous_fiend_rift_fang.skill matches 1.. run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.skill 245
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 3 unless score @s brown_wool.thunderous_fiend_rift_fang.skill matches 1.. run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.skill 395


execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 2.. as @e[type=zombie_horse ,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 2.. run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]

execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 165..205 run particle dust{color:[1, 0, 0],scale:1.0} ^ ^ ^ 0.5 0.5 0.5 0.1 30 force @a[distance=..50]
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 164 if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=skeleton_horse,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] run tp @s ~ ~6 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 164 unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} at @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] run tp @s ~ ~6 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 164 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill1.1
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 2 run tag @a remove brown_wool.thunderous_fiend_rift_fang_2.skill1.0
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 2 run kill @e[tag=brown_wool.thunderous_fiend_rift_fang_2.skill1.00]
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 2 if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=skeleton_horse,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] run tp @s ~ ~-0.5 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 2 unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} at @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] run tp @s ~ ~-0.5 ~

execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 201..245 run particle dust{color:[1, 0, 0],scale:1.0} ^ ^ ^ 0.5 0.5 0.5 0.1 30 force @a[distance=..50]
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 200 run tag @s add brown_wool.thunderous_fiend_rift_fang_2.skill2
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 2 run tag @s remove brown_wool.thunderous_fiend_rift_fang_2.skill2
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 2 run scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang_2.skill2

execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 2.. run tag @s add brown_wool.thunderous_fiend_rift_fang.cant_move
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 2.. as @e[type=zombie_horse ,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 2.. run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 355..395 run particle dust{color:[1, 0, 0],scale:1.0} ^ ^ ^ 0.5 0.5 0.5 0.1 30 force @a[distance=..50]
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 355 if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=skeleton_horse,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] run tp @s ~ ~-0.5 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 355 unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} at @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] run tp @s ~ ~-0.5 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 355 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/skill3.1
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 305 run tag @s add brown_wool.thunderous_fiend_rift_fang.fire
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 255 run tag @s add brown_wool.thunderous_fiend_rift_fang.fire
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 205 run tag @s add brown_wool.thunderous_fiend_rift_fang.fire
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 155 run tag @s add brown_wool.thunderous_fiend_rift_fang.fire
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 105 run tag @s add brown_wool.thunderous_fiend_rift_fang.fire
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 55 run tag @s add brown_wool.thunderous_fiend_rift_fang.fire




execute if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 1.. run scoreboard players remove @s brown_wool.thunderous_fiend_rift_fang.skill 1
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 1 run scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.skill_random
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 1 store result score @s brown_wool.thunderous_fiend_rift_fang.skill_cd run random value 160..240
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 1 run tag @s remove brown_wool.thunderous_fiend_rift_fang.cant_move
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 1 run tag @s remove brown_wool.thunderous_fiend_rift_fang.skill
execute if score @s brown_wool.thunderous_fiend_rift_fang.skill matches 1 run scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.skill






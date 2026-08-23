
# 執行位置：同上

# fire: 施放技能

execute unless score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 1.. store result score @s brown_wool.thunderous_fiend_rift_fang.fire_random run random value 1..4


execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 1.. unless score @s brown_wool.thunderous_fiend_rift_fang.fire matches 1.. run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.fire 32


# 記分板
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 2.. as @e[type=skeleton_horse,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 2.. run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 2..32 rotated ~ 0 positioned ^ ^1.5 ^1 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/fire_particle1
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 2 rotated ~ 0 run summon block_display ^ ^1.5 ^0.5 {Tags:["brown_wool.thunderous_fiend_rift_fang_2.fire1.1","brown_wool.thunderous_fiend_rift_fang_2.fire0.0"]}

execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 2.. as @e[type=skeleton_horse,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 2.. run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 2..32 rotated ~ 0 positioned ^ ^1.5 ^1 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/fire_particle2
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 2 rotated ~ 0 run summon block_display ^ ^1.5 ^0.5 {Tags:["brown_wool.thunderous_fiend_rift_fang_2.fire2.1","brown_wool.thunderous_fiend_rift_fang_2.fire0.0"]}

execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 2.. as @e[type=skeleton_horse,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 2.. run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 2..32 rotated ~ 0 positioned ^ ^1.5 ^1 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/fire_particle3
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 2 rotated ~ 0 run summon block_display ^ ^1.5 ^0.5 {Tags:["brown_wool.thunderous_fiend_rift_fang_2.fire3.1","brown_wool.thunderous_fiend_rift_fang_2.fire0.0"]}

execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 2.. as @e[type=skeleton_horse,tag=brown_wool.thunderous_fiend_rift_fang.horse,limit=1] at @s run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 2.. run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 2..32 rotated ~ 0 positioned ^ ^1.5 ^1 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/fire_particle4
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire_random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 2 rotated ~ 0 run summon block_display ^ ^1.5 ^0.5 {Tags:["brown_wool.thunderous_fiend_rift_fang_2.fire4.1","brown_wool.thunderous_fiend_rift_fang_2.fire0.0"]}





execute if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 1.. run scoreboard players remove @s brown_wool.thunderous_fiend_rift_fang.fire 1
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 1 run scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.fire_random
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 1 store result score @s brown_wool.thunderous_fiend_rift_fang.fire_cd run random value 60..100
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 1 run tag @s remove brown_wool.thunderous_fiend_rift_fang.cant_move
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 1 run tag @s remove brown_wool.thunderous_fiend_rift_fang.fire
execute if score @s brown_wool.thunderous_fiend_rift_fang.fire matches 1 run scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.fire






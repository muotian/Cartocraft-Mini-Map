
# 執行位置：同上

# cast: 施放技能

execute unless score @s brown_wool.thunderous_fiend_rift_fang.random matches 1.. store result score @s brown_wool.thunderous_fiend_rift_fang.random run random value 1..5

execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 3 if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.cast3] run scoreboard players add @s brown_wool.thunderous_fiend_rift_fang.random 1

execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 1 unless score @s brown_wool.thunderous_fiend_rift_fang.cast matches 1.. run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.cast 52
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 2 unless score @s brown_wool.thunderous_fiend_rift_fang.cast matches 1.. run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.cast 112
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 3 unless score @s brown_wool.thunderous_fiend_rift_fang.cast matches 1.. run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.cast 42
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 unless score @s brown_wool.thunderous_fiend_rift_fang.cast matches 1.. run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.cast 96
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 5 unless score @s brown_wool.thunderous_fiend_rift_fang.cast matches 1.. run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.cast 132

# 記分板
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 12..52 run particle dust{color:[0.08, 0.83, 0.98],scale:1.0} ^ ^ ^ 0.5 0.5 0.5 0.1 20 force @a[distance=..50]
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 12 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast1


execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 72..112 run particle dust{color:[0.08, 0.83, 0.98],scale:1.0} ^ ^ ^ 0.5 0.5 0.5 0.1 20 force @a[distance=..50]
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 12..72 run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 12..72 run particle cloud ^ ^ ^ 0.3 0.3 0.3 0.1 10 force @a[distance=..50]
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 12..72 rotated ~ 0 if block ^ ^ ^0.35 air run tp @s ^ ^ ^0.35
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 12..72 rotated ~ 0 positioned ^ ^0.1 ^4 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast_particle2.1
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 12..42 if entity @a[distance=..3.2,tag=brown_wool.thunderous_fiend_rift_fang.player] run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.cast 11
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 7..11 rotated ~ 0 run tp @s ^ ^0.6 ^0.4
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2..6 rotated ~ 0 run tp @s ^ ^-0.6 ^0.4
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2 rotated ~ 0 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast_particle2.2
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2 as @a[distance=..6.2,tag=brown_wool.thunderous_fiend_rift_fang.player] run damage @s 18 brown_wool:player_attack by @e[tag=brown_wool.thunderous_fiend_rift_fang_1,limit=1]


execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2..42 run particle dust{color:[0.08, 0.83, 0.98],scale:1.0} ^ ^ ^ 0.5 0.5 0.5 0.1 20 force @a[distance=..50]
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2 at @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] run particle dust{color:[0.08, 0.83, 0.98],scale:1.0} ^ ^ ^ 0.5 0.5 0.5 0.1 50 force @a[distance=..50]
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2 at @e[type=marker, tag=brown_wool.thunderous_fiend_rift_fang.terrain ,limit=1] run tp @s ~ ~-0.5 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast3
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2 run tag @s add brown_wool.thunderous_fiend_rift_fang.cast3


execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 96 run tag @s remove brown_wool.thunderous_fiend_rift_fang.cast3
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 56..96 run particle dust{color:[0.08, 0.83, 0.98],scale:1.0} ^ ^ ^ 0.5 0.5 0.5 0.1 20 force @a[distance=..50]
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 56..96 run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 56 run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 40..55 rotated ~ 0 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast_particle4.1
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 40 rotated ~ 0 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast4
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 40 rotated ~ 0 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast_particle4.2
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2 at @s as @a[distance=..16] run playsound entity.player.attack.sweep master @s
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 40 rotated ~ 0 if block ^ ^ ^7 air run tp @s ^ ^ ^7
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 40 run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 24..39 rotated ~ 0 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast_particle4.1
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 24 rotated ~ 0 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast4
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 24 rotated ~ 0 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast_particle4.2
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2 at @s as @a[distance=..16] run playsound entity.player.attack.sweep master @s
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 24 rotated ~ 0 if block ^ ^ ^7 air run tp @s ^ ^ ^7
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 24 run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 18..23 rotated ~ 0 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast_particle4.1
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 18 rotated ~ 0 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast4
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 18 rotated ~ 0 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast_particle4.2
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2 at @s as @a[distance=..16] run playsound entity.player.attack.sweep master @s
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 18 rotated ~ 0 if block ^ ^ ^7 air run tp @s ^ ^ ^7
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 18 run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2..17 rotated ~ 0 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast_particle4.1
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2 rotated ~ 0 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast4
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2 rotated ~ 0 run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/cast_particle4.2
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2 at @s as @a[distance=..16] run playsound entity.player.attack.sweep master @s
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2 rotated ~ 0 if block ^ ^ ^7 air run tp @s ^ ^ ^7


execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 5 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2.. run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 5 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 92..132 run particle dust{color:[0.08, 0.83, 0.98],scale:1.0} ^ ^ ^ 0.5 0.5 0.5 0.1 20 force @a[distance=..50]
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 5 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 92 at @r[tag=brown_wool.thunderous_fiend_rift_fang.player] run summon minecraft:item_display ~ ~ ~ {Tags:["brown_wool.thunderous_fiend_rift_fang_1.cast5"],item: {count: 1, id: "minecraft:netherite_spear"}, transformation: {left_rotation: [0.0f, 0.0f, 0.38268334f, 0.92387956f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2f, 2f, 2.0f], translation: [0.0f, 1.3f, 0.0f]}}
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 5 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 72 run tp @s @e[tag=brown_wool.thunderous_fiend_rift_fang_1.cast5,type=item_display,limit=1]
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 5 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 72 run tag @s add brown_wool.thunderous_fiend_rift_fang.pg
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 5 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 22 at @r[tag=brown_wool.thunderous_fiend_rift_fang.player] run summon minecraft:item_display ~ ~ ~ {Tags:["brown_wool.thunderous_fiend_rift_fang_1.cast5"],item: {count: 1, id: "minecraft:netherite_spear"}, transformation: {left_rotation: [0.0f, 0.0f, 0.38268334f, 0.92387956f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2f, 2f, 2.0f], translation: [0.0f, 1.3f, 0.0f]}}
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 5 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2 run tp @s @e[tag=brown_wool.thunderous_fiend_rift_fang_1.cast5,type=item_display,limit=1]
execute if score @s brown_wool.thunderous_fiend_rift_fang.random matches 5 if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 2 run tag @s add brown_wool.thunderous_fiend_rift_fang.pg





execute if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 1.. run scoreboard players remove @s brown_wool.thunderous_fiend_rift_fang.cast 1
execute if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 1 run scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.random
execute if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 1 store result score @s brown_wool.thunderous_fiend_rift_fang.cd run random value 120..160
execute if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 1 run tag @s remove brown_wool.thunderous_fiend_rift_fang.cant_move
execute if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 1 run tag @s remove brown_wool.thunderous_fiend_rift_fang.cast
execute if score @s brown_wool.thunderous_fiend_rift_fang.cast matches 1 run scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.cast






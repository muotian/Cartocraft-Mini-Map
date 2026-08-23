# 執行者：雙劍雷影衛
# 執行位置：同上

# cast: 施放技能


execute unless score @s brown_wool.thunder_shadow_guard.random matches 1.. store result score @s brown_wool.thunder_shadow_guard.random run random value 1..5


execute if score @s brown_wool.thunder_shadow_guard.random matches 1 unless score @s brown_wool.thunder_shadow_guard.cast matches 1.. run scoreboard players set @s brown_wool.thunder_shadow_guard.cast 28
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 unless score @s brown_wool.thunder_shadow_guard.cast matches 1.. run scoreboard players set @s brown_wool.thunder_shadow_guard.cast 40
execute if score @s brown_wool.thunder_shadow_guard.random matches 3 unless score @s brown_wool.thunder_shadow_guard.cast matches 1.. run scoreboard players set @s brown_wool.thunder_shadow_guard.cast 72
execute if score @s brown_wool.thunder_shadow_guard.random matches 4 unless score @s brown_wool.thunder_shadow_guard.cast matches 1.. run scoreboard players set @s brown_wool.thunder_shadow_guard.cast 113
execute if score @s brown_wool.thunder_shadow_guard.random matches 5 unless score @s brown_wool.thunder_shadow_guard.cast matches 1.. run scoreboard players set @s brown_wool.thunder_shadow_guard.cast 50

# 記分板
execute if score @s brown_wool.thunder_shadow_guard.random matches 1 if score @s brown_wool.thunder_shadow_guard.cast matches 28 rotated ~ 0 run function brown_wool:entity/boss/thunder_shadow_guard/cast1.1
execute if score @s brown_wool.thunder_shadow_guard.random matches 1 if score @s brown_wool.thunder_shadow_guard.cast matches 5..28 rotated ~ 0 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle1.1
execute if score @s brown_wool.thunder_shadow_guard.random matches 1 if score @s brown_wool.thunder_shadow_guard.cast matches 5..28 run rotate @s facing entity @n[type=marker,tag=brown_wool.thunder_shadow_guard.cast1.0]
execute if score @s brown_wool.thunder_shadow_guard.random matches 1 if score @s brown_wool.thunder_shadow_guard.cast matches 5 rotated ~ 0 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle1.2
execute if score @s brown_wool.thunder_shadow_guard.random matches 1 if score @s brown_wool.thunder_shadow_guard.cast matches 5 rotated ~ 0 run function brown_wool:entity/boss/thunder_shadow_guard/cast1.2
execute if score @s brown_wool.thunder_shadow_guard.random matches 1 if score @s brown_wool.thunder_shadow_guard.cast matches 5 rotated ~ 0 run tp @s ^ ^ ^7
execute if score @s brown_wool.thunder_shadow_guard.random matches 1 if score @s brown_wool.thunder_shadow_guard.cast matches 5 at @s as @a[distance=..15] run playsound entity.player.attack.sweep master @s

execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 40 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.1
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 40 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.2
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 40 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.3
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 35 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.1
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 35 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.2
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 35 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.3
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 30 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.1
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 30 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.2
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 30 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.3
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 25 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.1
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 25 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.2
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 25 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.3
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 20 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.1
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 20 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.2
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 20 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.3
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 15 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.1
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 15 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.2
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 15 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.3
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 10 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.1
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 10 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.2
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 10 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.3
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 5 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.1
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 5 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.2
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 5 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.3
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 2 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.1
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 2 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.2
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 2 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.3
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 2 run function brown_wool:entity/boss/thunder_shadow_guard/cast2.1
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 2 run function brown_wool:entity/boss/thunder_shadow_guard/cast2.2
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 2 run function brown_wool:entity/boss/thunder_shadow_guard/cast2.3
execute if score @s brown_wool.thunder_shadow_guard.random matches 2 if score @s brown_wool.thunder_shadow_guard.cast matches 2 at @s as @a[distance=..10] run playsound entity.player.attack.sweep master @s

execute if score @s brown_wool.thunder_shadow_guard.random matches 3 if score @s brown_wool.thunder_shadow_guard.cast matches 1.. run rotate @s facing entity @p[tag=brown_wool.thunder_shadow_guard.player]
execute if score @s brown_wool.thunder_shadow_guard.random matches 3 if score @s brown_wool.thunder_shadow_guard.cast matches 72 run function brown_wool:entity/boss/thunder_shadow_guard/cast3
execute if score @s brown_wool.thunder_shadow_guard.random matches 3 if score @s brown_wool.thunder_shadow_guard.cast matches 52 run particle dust{color:[0, 0, 0],scale:4} ~ ~1 ~ 0.6 0.6 0.6 0.1 50
execute if score @s brown_wool.thunder_shadow_guard.random matches 3 if score @s brown_wool.thunder_shadow_guard.cast matches 52 at @e[type=marker,tag=brown_wool.thunder_shadow_guard.cast3.0,limit=1] run tp @s ~ ~8 ~
execute if score @s brown_wool.thunder_shadow_guard.random matches 3 if score @s brown_wool.thunder_shadow_guard.cast matches 42..51 rotated ~ 0 if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute if score @s brown_wool.thunder_shadow_guard.random matches 3 if score @s brown_wool.thunder_shadow_guard.cast matches 42 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle3
execute if score @s brown_wool.thunder_shadow_guard.random matches 3 if score @s brown_wool.thunder_shadow_guard.cast matches 42 positioned ~ ~1 ~ as @a[distance=..5 ,tag=brown_wool.thunder_shadow_guard.player] run damage @s 14 brown_wool:player_attack by @n[tag=brown_wool.thunder_shadow_guard]
execute if score @s brown_wool.thunder_shadow_guard.random matches 1 if score @s brown_wool.thunder_shadow_guard.cast matches 42 at @s as @a[distance=..10] run playsound entity.player.attack.sweep master @s
execute if score @s brown_wool.thunder_shadow_guard.random matches 3 if score @s brown_wool.thunder_shadow_guard.cast matches 32 run function brown_wool:entity/boss/thunder_shadow_guard/cast3
execute if score @s brown_wool.thunder_shadow_guard.random matches 3 if score @s brown_wool.thunder_shadow_guard.cast matches 12 run particle dust{color:[0, 0, 0],scale:4} ~ ~1 ~ 0.6 0.6 0.6 0.1 50
execute if score @s brown_wool.thunder_shadow_guard.random matches 3 if score @s brown_wool.thunder_shadow_guard.cast matches 12 at @e[type=marker,tag=brown_wool.thunder_shadow_guard.cast3.0,limit=1] run tp @s ~ ~8 ~
execute if score @s brown_wool.thunder_shadow_guard.random matches 3 if score @s brown_wool.thunder_shadow_guard.cast matches 2..11 rotated ~ 0 if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute if score @s brown_wool.thunder_shadow_guard.random matches 3 if score @s brown_wool.thunder_shadow_guard.cast matches 2 run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle3
execute if score @s brown_wool.thunder_shadow_guard.random matches 3 if score @s brown_wool.thunder_shadow_guard.cast matches 2 positioned ~ ~1 ~ as @a[distance=..5 ,tag=brown_wool.thunder_shadow_guard.player] run damage @s 14 brown_wool:player_attack by @n[tag=brown_wool.thunder_shadow_guard]
execute if score @s brown_wool.thunder_shadow_guard.random matches 3 if score @s brown_wool.thunder_shadow_guard.cast matches 2 at @s as @a[distance=..10] run playsound entity.player.attack.sweep master @s

execute if score @s brown_wool.thunder_shadow_guard.random matches 4 if score @s brown_wool.thunder_shadow_guard.cast matches 73..113 run particle dust{color:[0, 0, 0],scale:1.0} ~ ~ ~ 0.5 0.5 0.5 0.1 50
execute if score @s brown_wool.thunder_shadow_guard.random matches 4 if score @s brown_wool.thunder_shadow_guard.cast matches 73 run function brown_wool:entity/boss/thunder_shadow_guard/cast4
execute if score @s brown_wool.thunder_shadow_guard.random matches 4 if score @s brown_wool.thunder_shadow_guard.cast matches 72 run particle dust{color:[0, 0, 0],scale:3.0} ~ ~ ~ 0.4 1 0.4 0.1 50
execute if score @s brown_wool.thunder_shadow_guard.random matches 4 if score @s brown_wool.thunder_shadow_guard.cast matches 49 run function brown_wool:entity/boss/thunder_shadow_guard/cast4
execute if score @s brown_wool.thunder_shadow_guard.random matches 4 if score @s brown_wool.thunder_shadow_guard.cast matches 48 run particle dust{color:[0, 0, 0],scale:3.0} ~ ~ ~ 0.4 1 0.4 0.1 50
execute if score @s brown_wool.thunder_shadow_guard.random matches 4 if score @s brown_wool.thunder_shadow_guard.cast matches 25 run function brown_wool:entity/boss/thunder_shadow_guard/cast4
execute if score @s brown_wool.thunder_shadow_guard.random matches 4 if score @s brown_wool.thunder_shadow_guard.cast matches 24 run particle dust{color:[0, 0, 0],scale:3.0} ~ ~ ~ 0.4 1 0.4 0.1 50
execute if score @s brown_wool.thunder_shadow_guard.random matches 4 if score @s brown_wool.thunder_shadow_guard.cast matches 2.. run tag @s add brown_wool.thunder_shadow_guard.cant_move

execute if score @s brown_wool.thunder_shadow_guard.random matches 5 if score @s brown_wool.thunder_shadow_guard.cast matches 50 run function brown_wool:entity/boss/thunder_shadow_guard/cast5
execute if score @s brown_wool.thunder_shadow_guard.random matches 5 if score @s brown_wool.thunder_shadow_guard.cast matches 2 positioned ~ ~1 ~ as @a[distance=..8.5 ,tag=brown_wool.thunder_shadow_guard.player] run effect give @s slowness 3 5 true
execute if score @s brown_wool.thunder_shadow_guard.random matches 5 if score @s brown_wool.thunder_shadow_guard.cast matches 2 positioned ~ ~1 ~ as @a[distance=..8.5 ,tag=brown_wool.thunder_shadow_guard.player] run effect give @s blindness 3 5 true
execute if score @s brown_wool.thunder_shadow_guard.random matches 5 if score @s brown_wool.thunder_shadow_guard.cast matches 2 positioned ~ ~1 ~ as @a[distance=..8.5 ,tag=brown_wool.thunder_shadow_guard.player] run effect give @s wither 3 2 true
execute if score @s brown_wool.thunder_shadow_guard.random matches 5 if score @s brown_wool.thunder_shadow_guard.cast matches 2 positioned ~ ~1 ~ as @a[distance=..8.5 ,tag=brown_wool.thunder_shadow_guard.player] run rotate @s facing entity @n[tag=brown_wool.thunder_shadow_guard]
execute if score @s brown_wool.thunder_shadow_guard.random matches 5 if score @s brown_wool.thunder_shadow_guard.cast matches 2 positioned ~ ~1 ~ as @a[distance=..8.5 ,tag=brown_wool.thunder_shadow_guard.player] run tp @s @n[tag=brown_wool.thunder_shadow_guard]




execute if score @s brown_wool.thunder_shadow_guard.cast matches 1.. run scoreboard players remove @s brown_wool.thunder_shadow_guard.cast 1
execute if score @s brown_wool.thunder_shadow_guard.cast matches 1 run scoreboard players reset @s brown_wool.thunder_shadow_guard.random
execute if score @s brown_wool.thunder_shadow_guard.cast matches 1 store result score @s brown_wool.thunder_shadow_guard.cd run random value 30..60
execute if score @s brown_wool.thunder_shadow_guard.cast matches 1 run tag @s remove brown_wool.thunder_shadow_guard.cant_move
execute if score @s brown_wool.thunder_shadow_guard.cast matches 1 run tag @s remove brown_wool.thunder_shadow_guard.cast
execute if score @s brown_wool.thunder_shadow_guard.cast matches 1 run scoreboard players reset @s brown_wool.thunder_shadow_guard.cast


execute unless score @s brown_wool.thunder_spirit.skill2.2 matches 0.. store result score @s brown_wool.thunder_spirit.skill2.2 run random value 1..60

execute if entity @s[tag=!brown_wool.thunder_spirit.skill2.00] if score @s brown_wool.thunder_spirit.skill2.1 matches 25.. rotated ~ 0 if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~

execute if entity @s[tag=!brown_wool.thunder_spirit.skill2.00] if score @s brown_wool.thunder_spirit.skill2.1 matches 25.. facing entity @p[tag=brown_wool.thunder_spirit.player] feet rotated ~ 0 run tp @s ^ ^ ^0.22


execute if entity @s[tag=!brown_wool.thunder_spirit.skill2.00] if score @s brown_wool.thunder_spirit.skill2.1 matches 25.. rotated ~ 0 positioned ~ ~-1.24 ~ run function brown_wool:entity/boss/thunder_spirit/skill_particle2.1


execute if entity @s[tag=!brown_wool.thunder_spirit.skill2.00] if entity @s[tag=brown_wool.thunder_spirit.skill2.1] if score @s brown_wool.thunder_spirit.skill2.1 matches 25.. if entity @a[distance=..2.7,tag=brown_wool.thunder_spirit.player] run tag @p[tag=brown_wool.thunder_spirit.player] add brown_wool.thunder_spirit.skill2.01
execute if entity @s[tag=!brown_wool.thunder_spirit.skill2.00] if entity @s[tag=brown_wool.thunder_spirit.skill2.2] if score @s brown_wool.thunder_spirit.skill2.1 matches 25.. if entity @a[distance=..2.7,tag=brown_wool.thunder_spirit.player] run tag @p[tag=brown_wool.thunder_spirit.player] add brown_wool.thunder_spirit.skill2.02
execute if entity @s[tag=!brown_wool.thunder_spirit.skill2.00] if entity @s[tag=brown_wool.thunder_spirit.skill2.3] if score @s brown_wool.thunder_spirit.skill2.1 matches 25.. if entity @a[distance=..2.7,tag=brown_wool.thunder_spirit.player] run tag @p[tag=brown_wool.thunder_spirit.player] add brown_wool.thunder_spirit.skill2.03
execute if entity @s[tag=!brown_wool.thunder_spirit.skill2.00] if entity @s[tag=brown_wool.thunder_spirit.skill2.4] if score @s brown_wool.thunder_spirit.skill2.1 matches 25.. if entity @a[distance=..2.7,tag=brown_wool.thunder_spirit.player] run tag @p[tag=brown_wool.thunder_spirit.player] add brown_wool.thunder_spirit.skill2.04
execute if entity @s[tag=!brown_wool.thunder_spirit.skill2.00] if score @s brown_wool.thunder_spirit.skill2.1 matches 25.. if entity @a[distance=..2.7,tag=brown_wool.thunder_spirit.player] run tag @s add brown_wool.thunder_spirit.skill2.00



execute if entity @s[tag=brown_wool.thunder_spirit.skill2.00] if entity @s[tag=brown_wool.thunder_spirit.skill2.1] at @a[tag=brown_wool.thunder_spirit.skill2.01,limit=1] rotated ~ 0 run tp @s ^1 ^1.25 ^-1.2
execute if entity @s[tag=brown_wool.thunder_spirit.skill2.00] if entity @s[tag=brown_wool.thunder_spirit.skill2.2] at @a[tag=brown_wool.thunder_spirit.skill2.02,limit=1] rotated ~ 0 run tp @s ^-1 ^1.25 ^-1.2
execute if entity @s[tag=brown_wool.thunder_spirit.skill2.00] if entity @s[tag=brown_wool.thunder_spirit.skill2.3] at @a[tag=brown_wool.thunder_spirit.skill2.03,limit=1] rotated ~ 0 run tp @s ^2 ^1.25 ^-0.5
execute if entity @s[tag=brown_wool.thunder_spirit.skill2.00] if entity @s[tag=brown_wool.thunder_spirit.skill2.4] at @a[tag=brown_wool.thunder_spirit.skill2.04,limit=1] rotated ~ 0 run tp @s ^-2 ^1.25 ^-0.5

execute if entity @s[tag=brown_wool.thunder_spirit.skill2.00] if entity @s[tag=brown_wool.thunder_spirit.skill2.1] facing entity @a[tag=brown_wool.thunder_spirit.skill2.01,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/skill2.2
execute if entity @s[tag=brown_wool.thunder_spirit.skill2.00] if entity @s[tag=brown_wool.thunder_spirit.skill2.2] facing entity @a[tag=brown_wool.thunder_spirit.skill2.02,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/skill2.2
execute if entity @s[tag=brown_wool.thunder_spirit.skill2.00] if entity @s[tag=brown_wool.thunder_spirit.skill2.3] facing entity @a[tag=brown_wool.thunder_spirit.skill2.03,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/skill2.2
execute if entity @s[tag=brown_wool.thunder_spirit.skill2.00] if entity @s[tag=brown_wool.thunder_spirit.skill2.4] facing entity @a[tag=brown_wool.thunder_spirit.skill2.04,limit=1] feet run function brown_wool:entity/boss/thunder_spirit/skill2.2

execute if entity @s[tag=!brown_wool.thunder_spirit.skill2.00] if score @s brown_wool.thunder_spirit.skill2.2 matches 81..100 run particle dust{color:[0.66, 0.35, 0.91],scale:1} ~ ~-0.5 ~ 0.3 0.3 0.3 0.1 20

execute if entity @s[tag=!brown_wool.thunder_spirit.skill2.00] if score @s brown_wool.thunder_spirit.skill2.2 matches 100.. store result score @s brown_wool.thunder_spirit.skill2_random run random value 1..3

execute if entity @s[tag=!brown_wool.thunder_spirit.skill2.00] if score @s brown_wool.thunder_spirit.skill2_random matches 1 at @r[tag=brown_wool.thunder_spirit.player] rotated ~ 0 run tp @s ^ ^1.25 ^7
execute if entity @s[tag=!brown_wool.thunder_spirit.skill2.00] if score @s brown_wool.thunder_spirit.skill2_random matches 2 at @r[tag=brown_wool.thunder_spirit.player] rotated ~ 0 run tp @s ^7 ^1.25 ^
execute if entity @s[tag=!brown_wool.thunder_spirit.skill2.00] if score @s brown_wool.thunder_spirit.skill2_random matches 3 at @r[tag=brown_wool.thunder_spirit.player] rotated ~ 0 run tp @s ^-7 ^1.25 ^

execute if entity @s[tag=!brown_wool.thunder_spirit.skill2.00] if score @s brown_wool.thunder_spirit.skill2_random matches 1.. run particle portal ~ ~-0.5 ~ 0.3 0.3 0.3 0.1 20
execute if entity @s[tag=!brown_wool.thunder_spirit.skill2.00] if score @s brown_wool.thunder_spirit.skill2_random matches 1.. as @a[distance=..8] run playsound entity.shulker.teleport player

execute if score @s brown_wool.thunder_spirit.skill2_random matches 1.. run scoreboard players reset @s brown_wool.thunder_spirit.skill2_random
execute if score @s brown_wool.thunder_spirit.skill2.2 matches 100.. store result score @s brown_wool.thunder_spirit.skill2.2 run random value 1..60

scoreboard players reset @a brown_wool.thunder_spirit.skill2.3

execute as @a[tag=brown_wool.thunder_spirit.skill2.01] run scoreboard players add @s brown_wool.thunder_spirit.skill2.3 1
execute as @a[tag=brown_wool.thunder_spirit.skill2.02] run scoreboard players add @s brown_wool.thunder_spirit.skill2.3 1
execute as @a[tag=brown_wool.thunder_spirit.skill2.03] run scoreboard players add @s brown_wool.thunder_spirit.skill2.3 1
execute as @a[tag=brown_wool.thunder_spirit.skill2.04] run scoreboard players add @s brown_wool.thunder_spirit.skill2.3 1

execute as @a[tag=brown_wool.thunder_spirit.player] if score @s brown_wool.thunder_spirit.skill2.3 matches 1 run effect give @s slowness 1 0 true
execute as @a[tag=brown_wool.thunder_spirit.player] if score @s brown_wool.thunder_spirit.skill2.3 matches 2 run effect give @s slowness 1 2 true
execute as @a[tag=brown_wool.thunder_spirit.player] if score @s brown_wool.thunder_spirit.skill2.3 matches 3 run effect give @s slowness 1 3 true
execute as @a[tag=brown_wool.thunder_spirit.player] if score @s brown_wool.thunder_spirit.skill2.3 matches 4 run effect give @s slowness 1 3 true


execute if entity @s[tag=!brown_wool.thunder_spirit.skill2.00] if score @s brown_wool.thunder_spirit.skill2.1 matches 25.. run scoreboard players add @s brown_wool.thunder_spirit.skill2.2 1
scoreboard players add @s brown_wool.thunder_spirit.skill2.1 1


execute if score @s brown_wool.thunder_spirit.skill2.1 matches 300.. run kill @s

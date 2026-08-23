# 執行者：雙劍雷影衛
# 執行位置：同上

# cast: 施放技能
particle dust{color:[0, 0, 0],scale:3.0} ~ ~ ~ 0.4 1 0.4 0.1 250

execute unless score @s brown_wool.thunder_shadow_guard.cast4 matches 1.. store result score @s brown_wool.thunder_shadow_guard.cast4 run random value 1..4


execute if score @s brown_wool.thunder_shadow_guard.cast4 matches 1 at @r[tag=brown_wool.thunder_shadow_guard.player] run tp @s ~ ~ ~2
execute if score @s brown_wool.thunder_shadow_guard.cast4 matches 2 at @r[tag=brown_wool.thunder_shadow_guard.player] run tp @s ~ ~ ~-2
execute if score @s brown_wool.thunder_shadow_guard.cast4 matches 3 at @r[tag=brown_wool.thunder_shadow_guard.player] run tp @s ~2 ~ ~
execute if score @s brown_wool.thunder_shadow_guard.cast4 matches 4 at @r[tag=brown_wool.thunder_shadow_guard.player] run tp @s ~-2 ~ ~

tag @s add brown_wool.thunder_shadow_guard.pg
scoreboard players reset @s brown_wool.thunder_shadow_guard.cast4

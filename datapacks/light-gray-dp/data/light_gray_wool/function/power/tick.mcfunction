# 沒有靈力時

execute as @a[scores={light_gray_wool_power=..0}] run damage @s 1
execute as @a[scores={light_gray_wool_power=..0}] run scoreboard players add @s light_gray_wool_power 1

# 靈力為1時


# 靈力超過60


execute as @a[scores={light_gray_wool_power=60..}] run scoreboard players remove @s light_gray_wool_power 1

execute at @e[tag=lgw_build,type=armor_stand] if entity @e[tag=kp06125_say_something,distance=..8] run setblock ~ ~-3 ~ minecraft:redstone_block

execute unless entity @e[tag=light_gray_wool_boss] run execute as @e[type=item_display,tag=aj.light_gray_wool_boss.entity] run kill @s

execute unless entity @e[tag=light_gray_wool_boss] run bossbar set minecraft:light_gray_wool_boss_hp visible false
# 執行者：吹響號角的玩家
# 執行位置：同上

# 定身效果



execute positioned ^ ^1 ^1 run function animated_java:spell/summon {args: {}}
execute as @e[type=item_display,tag=aj.spell.root] run function animated_java:spell/animations/idel/play

attribute @s minecraft:scale base reset

attribute @s minecraft:gravity base reset

scoreboard players remove @s light_gray_wool_power 10

function light_gray_wool:spell_scale/give

clear @s minecraft:goat_horn[minecraft:custom_data={spell_base:1b}]

schedule function light_gray_wool:spell_base/kill 25t
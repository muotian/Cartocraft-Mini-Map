# 執行者：吹響號角的玩家
# 執行位置：同上

# 定身效果



execute positioned ^ ^1 ^1 run function animated_java:spell/summon {args: {}}
execute as @e[type=item_display,tag=aj.spell.root] run function animated_java:spell/animations/idel/play

function light_gray_wool:spell_temp_sword/give


scoreboard players remove @s light_gray_wool_power 10

schedule function light_gray_wool:spell_sword/kill 25t
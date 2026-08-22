# 執行者：吹響號角的玩家
# 執行位置：同上

# 定身效果


playsound minecraft:block.amethyst_block.place voice @s

execute positioned ^ ^1 ^1 run function animated_java:spell/summon {args: {}}
execute as @e[type=item_display,tag=aj.spell.root] run function animated_java:spell/animations/idel/play

execute as @s run effect give @e[distance=..3,type=!player] minecraft:slowness 3 255 true
particle dust{scale:1, color:[1, 1, 0]} ~ ~1 ~ 1 1 1 1 100 force
scoreboard players remove @s light_gray_wool_power 10

schedule function light_gray_wool:spell_freeze/kill 25t
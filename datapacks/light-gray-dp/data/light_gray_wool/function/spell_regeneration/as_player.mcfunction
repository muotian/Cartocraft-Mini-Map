# 執行者：吹響號角的玩家
# 執行位置：同上

# 3x3基岩換空氣


playsound minecraft:block.amethyst_block.place voice @s

execute positioned ^ ^1 ^1 run function animated_java:spell/summon {args: {}}
execute as @e[type=item_display,tag=aj.spell.root] run function animated_java:spell/animations/idel/play

scoreboard players remove @s light_gray_wool_power 10
effect give @s minecraft:regeneration 10 1 true

particle dust{scale:1, color:[1, 1, 0]} ~ ~1 ~ 1 1 1 1 100 force


schedule function light_gray_wool:spell_regeneration/kill 25t


# 執行者：吹響號角的玩家
# 執行位置：同上

# 定身效果

playsound minecraft:block.note_block.imitate.ender_dragon voice @s

summon minecraft:armor_stand ~ ~ ~ {CustomName:{translate:"kp06125_say_something"}, Tags:["kp06125_say_something"], CustomNameVisible:1b, Invisible:true, NoGravity:true}
execute positioned ~ ~1 ~ run function animated_java:spell_extra/summon {args: {}}
execute as @e[type=item_display,tag=aj.spell_extra.root] run function animated_java:spell_extra/animations/use/play

effect give @s minecraft:slowness 3 255 true
particle dust{scale:1, color:[1, 1, 0]} ~ ~1 ~ 1 1 1 1 100 force

schedule function light_gray_wool:spell_extra/kill 100t
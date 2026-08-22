playsound minecraft:block.glass.break voice @a

execute as @e[type=item_display,tag=aj.light_gray_wool_boss.root] run function animated_java:light_gray_wool_boss/animations/attack1/play

particle dust{scale:1, color:[1, 0, 0]} ~ ~1 ~ 1 1 1 1 100 force

summon polar_bear ~ ~ ~ {CustomName:{translate:"entity.light_gray_wool.bear"}, Tags:["light_gray_wool_bear"], CustomNameVisible:1b}

schedule function light_gray_wool:boss/idle 25t
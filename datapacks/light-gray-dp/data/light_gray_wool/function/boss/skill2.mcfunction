playsound minecraft:block.glass.break voice @a

execute as @e[type=item_display,tag=aj.light_gray_wool_boss.root] run function animated_java:light_gray_wool_boss/animations/attack1/play

particle dust{scale:1, color:[1, 0, 0]} ~ ~1 ~ 1 1 1 1 100 force
execute at @s run damage @e[type=minecraft:polar_bear,tag=light_gray_wool_bear,limit=1] 1 minecraft:explosion by @a[limit=1]

execute at @s run effect give @e[type=player,distance=..5,limit=1] minecraft:levitation 1 10 true

schedule function light_gray_wool:boss/idle 25t
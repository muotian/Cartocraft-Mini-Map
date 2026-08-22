playsound minecraft:item.totem.use voice @a

execute as @e[type=item_display,tag=aj.light_gray_wool_boss.root] run function animated_java:light_gray_wool_boss/animations/hurt/play

particle dust{scale:1, color:[1, 0, 0]} ~ ~1 ~ 1 1 1 1 100 force

effect clear @e[tag=light_gray_wool_boss] minecraft:resistance
effect give @e[tag=light_gray_wool_boss] minecraft:slowness infinite 255 true

schedule function light_gray_wool:boss/idle 4s
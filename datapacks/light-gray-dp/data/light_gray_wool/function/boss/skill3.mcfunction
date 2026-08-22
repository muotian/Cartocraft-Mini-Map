playsound minecraft:entity.dragon_fireball.explode voice @a

execute as @e[type=item_display,tag=aj.light_gray_wool_boss.root] run function animated_java:light_gray_wool_boss/animations/attack2/play

particle dust{scale:1, color:[1, 0, 0]} ~ ~1 ~ 1 1 1 1 100 force
kill @e[tag=light_gray_wool_bear]
execute at @e[type=!player,limit=1,distance=..3] run particle minecraft:explosion_emitter ^ ^ ^3
execute at @s run damage @e[type=player,distance=..3,limit=1] 15 minecraft:explosion


schedule function light_gray_wool:boss/idle 25t
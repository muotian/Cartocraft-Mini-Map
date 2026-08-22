execute as @e[type=item_display,tag=aj.light_gray_wool_boss.root] run function animated_java:light_gray_wool_boss/animations/attack1/stop
execute as @e[type=item_display,tag=aj.light_gray_wool_boss.root] run function animated_java:light_gray_wool_boss/animations/attack2/stop
execute as @e[type=item_display,tag=aj.light_gray_wool_boss.root] run function animated_java:light_gray_wool_boss/animations/hurt/stop

execute as @e[type=item_display,tag=aj.light_gray_wool_boss.root] run function animated_java:light_gray_wool_boss/animations/idle/tween {to_frame: 1, duration: 10}


effect give @e[tag=light_gray_wool_boss] minecraft:resistance infinite 3 true
effect clear @e[tag=light_gray_wool_boss] minecraft:slowness
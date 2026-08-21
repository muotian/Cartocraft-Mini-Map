# 遞迴
particle minecraft:dust_color_transition{from_color:[1.0, 0.2, 0.2], to_color:[1.0, 0.7, 0.3], scale:0.5} ~ ~ ~ 0 0 0 0.1 2

execute if entity @s[distance=..30] unless entity @e[tag=laser_target,dx=0] positioned ^ ^ ^0.2 run function mini_light:weapons/redstone/recursion_effect
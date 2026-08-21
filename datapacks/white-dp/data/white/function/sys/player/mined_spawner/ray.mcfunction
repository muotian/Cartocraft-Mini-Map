
execute as @n[nbt={Age:0s},type=experience_orb,distance=..0.87] run return run tag @s add white.spawner_center

scoreboard players remove #range white.main 5
execute if score #range white.main matches 1.. positioned ^ ^ ^0.5 run function white:sys/player/mined_spawner/ray
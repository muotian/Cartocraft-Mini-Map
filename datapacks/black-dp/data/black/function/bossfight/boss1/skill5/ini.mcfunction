kill @e[tag=icebird.b1s5]
schedule clear black:bossfight/boss1/skill5/ini2
scoreboard players set $b1s5_timer icebird.boss1 0
tag @n[tag=icebird.boss1] add icebird.b1s5_act
data modify entity @n[tag=icebird.boss1] NoAI set value 1b
gamerule natural_health_regeneration false
tellraw @a {translate:"black.b1s5_warn"}
title @a times 0 1.5s 0
title @a title {text:"§a!"}
title @a subtitle {translate:"black.boss1.phase1.5"}
scoreboard players set $phase icebird.boss1 2

# black.boss1.phase1.5 = 中場階段 (Intermission)

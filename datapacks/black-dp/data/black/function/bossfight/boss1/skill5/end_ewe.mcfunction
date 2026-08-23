schedule clear black:bossfight/boss1/skill5/ini2
data modify entity @n[tag=icebird.b1s5_act] NoAI set value 0b
tag @e remove icebird.b1s5_act
kill @e[tag=icebird.b1s5]
gamerule natural_health_regeneration true
bossbar set icebird.boss1_shield visible false
playsound black:ring block @a ~ ~ ~ 2 1
title @a times 0 1.5s 0
title @a title {text:"§a!"}
title @a subtitle {translate:"black.boss1.phase2"}
scoreboard players set $boss1.skill1 icebird.boss1 90
scoreboard players set $boss1.skill2 icebird.boss1 120
scoreboard players set $boss1.skill3 icebird.boss1 140
scoreboard players set $boss1.skill4 icebird.boss1 280
scoreboard players set $boss1.skill5 icebird.boss1 0
scoreboard players set $phase icebird.boss1 3



# black.boss1.phase2 = 階段 2 (Phase 2)
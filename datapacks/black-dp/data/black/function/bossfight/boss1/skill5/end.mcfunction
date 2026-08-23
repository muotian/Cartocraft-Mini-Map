schedule clear black:bossfight/boss1/skill5/ini2
data modify entity @n[tag=icebird.b1s5_act] NoAI set value 0b
tag @e remove icebird.b1s5_act
kill @e[tag=icebird.b1s5]
gamerule natural_health_regeneration true
bossbar set icebird.boss1_shield visible false
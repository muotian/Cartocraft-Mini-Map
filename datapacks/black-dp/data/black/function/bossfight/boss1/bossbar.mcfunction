schedule function black:bossfight/boss1/bossbar 1t
execute store result bossbar minecraft:icebird.boss1_1 value run scoreboard players get @n[tag=icebird.boss1] black.boss_real.hp
execute store result bossbar minecraft:icebird.boss1_2 value run scoreboard players get @n[tag=icebird.boss1] black.boss_fake.hp
execute if score $bossbartick_1 icebird.boss1 matches 1..10 run scoreboard players remove $bossbartick_1 icebird.boss1 1
execute if score $bossbartick_2 icebird.boss1 matches 1..10 run scoreboard players remove $bossbartick_2 icebird.boss1 1
execute if score $bossbartick_1 icebird.boss1 matches 10 run bossbar set minecraft:icebird.boss1_1 color pink
execute if score $bossbartick_1 icebird.boss1 matches 5 run bossbar set minecraft:icebird.boss1_1 color red
execute if score $bossbartick_2 icebird.boss1 matches 10 run bossbar set minecraft:icebird.boss1_2 color pink
execute if score $bossbartick_2 icebird.boss1 matches 5 run bossbar set minecraft:icebird.boss1_2 color red

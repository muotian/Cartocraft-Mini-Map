schedule function black:bossfight/boss1/skill5/ini2 6s

execute store result score $b1s5_rng icebird.boss1 run random value 1..8
execute if score $b1s5_rng icebird.boss1 matches 1 at @n[tag=black.boss1_center] run function black:bossfight/boss1/skill5/summon_1
execute if score $b1s5_rng icebird.boss1 matches 2 at @n[tag=black.boss1_center] run function black:bossfight/boss1/skill5/summon_2
execute if score $b1s5_rng icebird.boss1 matches 3 at @n[tag=black.boss1_center] run function black:bossfight/boss1/skill5/summon_3
execute if score $b1s5_rng icebird.boss1 matches 4 at @n[tag=black.boss1_center] run function black:bossfight/boss1/skill5/summon_4
execute if score $b1s5_rng icebird.boss1 matches 5 at @n[tag=black.boss1_center] run function black:bossfight/boss1/skill5/summon_5
execute if score $b1s5_rng icebird.boss1 matches 6 at @n[tag=black.boss1_center] run function black:bossfight/boss1/skill5/summon_6
execute if score $b1s5_rng icebird.boss1 matches 7 at @n[tag=black.boss1_center] run function black:bossfight/boss1/skill5/summon_7
execute if score $b1s5_rng icebird.boss1 matches 8 at @n[tag=black.boss1_center] run function black:bossfight/boss1/skill5/summon_8





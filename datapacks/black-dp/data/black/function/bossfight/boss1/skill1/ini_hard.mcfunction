execute at @n[tag=black.boss1_center] run summon marker ~ ~ ~ {Tags:["icebird.b1s1","icebird.b1s1_hard"]}
execute store result score $b1s1.rng2_hard icebird.boss1 run random value 1..2
scoreboard players set $boss1.skill1_hard icebird.boss1 -8
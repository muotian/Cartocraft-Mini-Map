tag @e[tag=icebird.b1s1_corner] remove icebird.b1s1_corner.target
scoreboard players set @e[tag=icebird.b1s1_corner] icebird.boss1 0

execute store result score $b1s1.rng icebird.boss1 run random value 1..4
execute store result score $b1s1.rng2 icebird.boss1 run random value 1..2
execute store result score $b1s1.rng3 icebird.boss1 run random value 1..2
execute store result score $ewe icebird.boss1 run random value 1..2

execute if score $b1s1.rng icebird.boss1 matches 1 run tag @n[tag=icebird.b1s1_corner1] add icebird.b1s1_corner.target
execute if score $b1s1.rng icebird.boss1 matches 2 run tag @n[tag=icebird.b1s1_corner2] add icebird.b1s1_corner.target
execute if score $b1s1.rng icebird.boss1 matches 3 run tag @n[tag=icebird.b1s1_corner3] add icebird.b1s1_corner.target
execute if score $b1s1.rng icebird.boss1 matches 4 run tag @n[tag=icebird.b1s1_corner4] add icebird.b1s1_corner.target

#bossbar set icebird.boss1_skill name {translate:"black.boss1.skill1"}
#bossbar set icebird.boss1_skill max 25
#scoreboard players set $boss1.stop icebird.boss1 1
#b1s5.circle

scoreboard players add @s icebird.boss1 1
tp @s ~ ~ ~ ~4 ~
execute if score @s icebird.boss1 matches 60 run function black:bossfight/boss1/skill5/circle_damage
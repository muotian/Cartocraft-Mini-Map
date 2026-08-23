#b1s5
scoreboard players add @s icebird.boss1 1
execute if score @s icebird.boss1 matches 1 run data modify entity @s brightness set value {sky:1,block:1}
execute if score @s icebird.boss1 matches 2 run data modify entity @s brightness set value {sky:2,block:2}
execute if score @s icebird.boss1 matches 3 run data modify entity @s brightness set value {sky:3,block:3}
execute if score @s icebird.boss1 matches 4 run data modify entity @s brightness set value {sky:4,block:4}
execute if score @s icebird.boss1 matches 5 run data modify entity @s brightness set value {sky:5,block:5}
execute if score @s icebird.boss1 matches 6 run data modify entity @s brightness set value {sky:6,block:6}
execute if score @s icebird.boss1 matches 7 run data modify entity @s brightness set value {sky:7,block:7}
execute if score @s icebird.boss1 matches 8 run data modify entity @s brightness set value {sky:8,block:8}
execute if score @s icebird.boss1 matches 9 run data modify entity @s brightness set value {sky:9,block:9}
execute if score @s icebird.boss1 matches 10 run data modify entity @s brightness set value {sky:10,block:10}
execute if score @s icebird.boss1 matches 11 run data modify entity @s brightness set value {sky:11,block:11}
execute if score @s icebird.boss1 matches 12 run data modify entity @s brightness set value {sky:12,block:12}
execute if score @s icebird.boss1 matches 13 run data modify entity @s brightness set value {sky:13,block:13}
execute if score @s icebird.boss1 matches 14 run data modify entity @s brightness set value {sky:14,block:14}
execute if score @s icebird.boss1 matches 15 run data modify entity @s brightness set value {sky:15,block:15}
execute if score @s icebird.boss1 matches 15.. run scoreboard players add @s icebird.core 1
execute if score @s icebird.core matches 1 run data modify entity @s brightness set value {sky:15,block:15}
execute if score @s icebird.core matches 2 run data modify entity @s brightness set value {sky:14,block:14}
execute if score @s icebird.core matches 3 run data modify entity @s brightness set value {sky:13,block:13}
execute if score @s icebird.core matches 4 run data modify entity @s brightness set value {sky:12,block:12}
execute if score @s icebird.core matches 5 run data modify entity @s brightness set value {sky:11,block:11}
execute if score @s icebird.core matches 6 run data modify entity @s brightness set value {sky:10,block:10}
execute if score @s icebird.core matches 7 run data modify entity @s brightness set value {sky:9,block:9}
execute if score @s icebird.core matches 8 run data modify entity @s brightness set value {sky:10,block:10}
execute if score @s icebird.core matches 9 run data modify entity @s brightness set value {sky:11,block:11}
execute if score @s icebird.core matches 10 run data modify entity @s brightness set value {sky:12,block:12}
execute if score @s icebird.core matches 11 run data modify entity @s brightness set value {sky:13,block:13}
execute if score @s icebird.core matches 12 run data modify entity @s brightness set value {sky:14,block:14}
execute if score @s icebird.core matches 13 run data modify entity @s brightness set value {sky:15,block:15}
scoreboard players set @s[scores={icebird.core=13}] icebird.core 0
execute if score @s icebird.boss1 matches 90 run function black:bossfight/boss1/skill5/damage_ini
data modify entity @s[scores={icebird.boss1=90}] interpolation_duration set value 5
data modify entity @s[scores={icebird.boss1=90}] transformation.scale set value [48f,48f,1f]
execute if score @s icebird.boss1 matches 91 run data modify entity @s brightness set value {sky:15,block:15}
execute if score @s icebird.boss1 matches 92 run data modify entity @s brightness set value {sky:14,block:14}
execute if score @s icebird.boss1 matches 93 run data modify entity @s brightness set value {sky:13,block:13}
execute if score @s icebird.boss1 matches 94 run data modify entity @s brightness set value {sky:12,block:12}
execute if score @s icebird.boss1 matches 95 run data modify entity @s brightness set value {sky:11,block:11}
execute if score @s icebird.boss1 matches 96 run data modify entity @s brightness set value {sky:10,block:10}
execute if score @s icebird.boss1 matches 97 run data modify entity @s brightness set value {sky:9,block:9}
execute if score @s icebird.boss1 matches 98 run data modify entity @s brightness set value {sky:8,block:8}
execute if score @s icebird.boss1 matches 99 run data modify entity @s brightness set value {sky:7,block:7}
execute if score @s icebird.boss1 matches 100 run data modify entity @s brightness set value {sky:6,block:6}
execute if score @s icebird.boss1 matches 101 run data modify entity @s brightness set value {sky:5,block:5}
execute if score @s icebird.boss1 matches 102 run data modify entity @s brightness set value {sky:4,block:4}
execute if score @s icebird.boss1 matches 103 run data modify entity @s brightness set value {sky:3,block:3}
execute if score @s icebird.boss1 matches 104 run data modify entity @s brightness set value {sky:2,block:2}
execute if score @s icebird.boss1 matches 105 run data modify entity @s brightness set value {sky:1,block:1}
kill @s[scores={icebird.boss1=105}]

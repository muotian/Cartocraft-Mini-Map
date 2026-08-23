

# 移動
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if entity @p[distance=8.. ,tag=brown_wool.xuan_ting_priest.player] rotated ~ 0 run tp @s ^ ^ ^0.12
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if entity @p[distance=..7.9 ,tag=brown_wool.xuan_ting_priest.player] rotated ~ 0 run tp @s ^ ^ ^-0.12

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if entity @n[tag=brown_wool.xuan_ting_priest.terrain ,distance=15..] run tag @s add brown_wool.xuan_ting_priest.move0.0
execute if entity @s[tag=brown_wool.xuan_ting_priest.move0.0] unless score @s brown_wool.xuan_ting_priest.move0.0 matches 1.. run rotate @s facing entity @n[tag=brown_wool.xuan_ting_priest.terrain]
execute if entity @s[tag=brown_wool.xuan_ting_priest.move0.0] run attribute @s scale base set 0.01
execute if entity @s[tag=brown_wool.xuan_ting_priest.move0.0] run scoreboard players add @s brown_wool.xuan_ting_priest.move0.0 1
execute if entity @s[tag=brown_wool.xuan_ting_priest.move0.0] run particle dust{color:[0, 0.93, 1],scale:4.0} ^ ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
execute if entity @s[tag=brown_wool.xuan_ting_priest.move0.0] run particle dust{color:[0.6, 0, 1],scale:4.0} ^ ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
execute if entity @s[tag=brown_wool.xuan_ting_priest.move0.0] rotated ~ 0 run tp @s ^ ^ ^0.8
execute if score @s brown_wool.xuan_ting_priest.move0.0 matches 30 run attribute @s scale base reset
execute if score @s brown_wool.xuan_ting_priest.move0.0 matches 30 run tag @s remove brown_wool.xuan_ting_priest.move0.0
execute if score @s brown_wool.xuan_ting_priest.move0.0 matches 30 run scoreboard players reset @s brown_wool.xuan_ting_priest.move0.0

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] unless score @s brown_wool.xuan_ting_priest.move matches 1.. if entity @p[distance=..8 ,tag=brown_wool.xuan_ting_priest.player] run scoreboard players add @s brown_wool.xuan_ting_priest.move2 1
execute if score @s brown_wool.xuan_ting_priest.move2 matches 40.. run tag @s add brown_wool.xuan_ting_priest.move0
execute if score @s brown_wool.xuan_ting_priest.move2 matches 40.. run scoreboard players reset @s brown_wool.xuan_ting_priest.move2

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 1 if score @s brown_wool.xuan_ting_priest.move matches 30..80 rotated ~ 0 if block ^-0.07 ^ ^0.05 air run tp @s ^-0.07 ^ ^0.05
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 1 if score @s brown_wool.xuan_ting_priest.move matches 1..29 rotated ~ 0 if block ^0.03 ^ ^-0.09 air run tp @s ^0.03 ^ ^-0.09

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 2 if score @s brown_wool.xuan_ting_priest.move matches 30..80 rotated ~ 0 if block ^0.07 ^ ^0.05 air run tp @s ^0.07 ^ ^0.05
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 2 if score @s brown_wool.xuan_ting_priest.move matches 1..29 rotated ~ 0 if block ^-0.03 ^ ^-0.09 air run tp @s ^-0.03 ^ ^-0.09

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 3 if score @s brown_wool.xuan_ting_priest.move matches 30..100 rotated ~ 0 if block ^-0.05 ^ ^0.07 air run tp @s ^-0.05 ^ ^0.07
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 3 if score @s brown_wool.xuan_ting_priest.move matches 1..29 rotated ~ 0 if block ^0.09 ^ ^-0.03 air run tp @s ^0.09 ^ ^-0.03

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 4 if score @s brown_wool.xuan_ting_priest.move matches 30..100 rotated ~ 0 if block ^0.05 ^ ^0.07 air run tp @s ^0.05 ^ ^0.07
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 4 if score @s brown_wool.xuan_ting_priest.move matches 1..29 rotated ~ 0 if block ^-0.09 ^ ^-0.03 air run tp @s ^-0.09 ^ ^-0.03

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 5 if score @s brown_wool.xuan_ting_priest.move matches 30..60 rotated ~ 0 if block ^0.12 ^ ^ air run tp @s ^0.12 ^ ^
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 5 if score @s brown_wool.xuan_ting_priest.move matches 1..29 rotated ~ 0 if block ^0.02 ^ ^0.1 air run tp @s ^0.02 ^ ^0.1

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 6 if score @s brown_wool.xuan_ting_priest.move matches 30..60 rotated ~ 0 if block ^-0.12 ^ ^ air run tp @s ^-0.12 ^ ^
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 6 if score @s brown_wool.xuan_ting_priest.move matches 1..29 rotated ~ 0 if block ^-0.02 ^ ^0.1 air run tp @s ^-0.02 ^ ^0.1

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 7 if score @s brown_wool.xuan_ting_priest.move matches 30..60 rotated ~ 0 if block ^0.02 ^ ^-0.1 air run tp @s ^0.02 ^ ^-0.1
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 7 if score @s brown_wool.xuan_ting_priest.move matches 1..29 rotated ~ 0 if block ^-0.02 ^ ^0.1 air run tp @s ^-0.02 ^ ^0.1

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 8 if score @s brown_wool.xuan_ting_priest.move matches 30..60 rotated ~ 0 if block ^-0.02 ^ ^-0.1 air run tp @s ^-0.02 ^ ^-0.1
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 8 if score @s brown_wool.xuan_ting_priest.move matches 1..29 rotated ~ 0 if block ^0.02 ^ ^0.1 air run tp @s ^0.02 ^ ^0.1

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 9 if score @s brown_wool.xuan_ting_priest.move matches 40..80 rotated ~ 0 if block ^-0.06 ^ ^-0.06 air run tp @s ^-0.06 ^ ^-0.06
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 9 if score @s brown_wool.xuan_ting_priest.move matches 1..39 rotated ~ 0 if block ^0.06 ^ ^0.06 air run tp @s ^0.06 ^ ^0.06

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 10 if score @s brown_wool.xuan_ting_priest.move matches 40..80 rotated ~ 0 if block ^0.06 ^ ^-0.06 air run tp @s ^0.06 ^ ^-0.06
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 10 if score @s brown_wool.xuan_ting_priest.move matches 1..39 rotated ~ 0 if block ^-0.06 ^ ^0.06 air run tp @s ^-0.06 ^ ^0.06

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 11 if score @s brown_wool.xuan_ting_priest.move matches 40..80 rotated ~ 0 if block ^-0.06 ^ ^-0.06 air run tp @s ^-0.06 ^ ^-0.06
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 11 if score @s brown_wool.xuan_ting_priest.move matches 1..39 rotated ~ 0 if block ^-0.06 ^ ^0.06 air run tp @s ^-0.06 ^ ^0.06

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 12 if score @s brown_wool.xuan_ting_priest.move matches 40..80 rotated ~ 0 if block ^0.06 ^ ^-0.06 air run tp @s ^0.06 ^ ^-0.06
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 12 if score @s brown_wool.xuan_ting_priest.move matches 1..39 rotated ~ 0 if block ^0.06 ^ ^0.06 air run tp @s ^0.06 ^ ^0.06

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 13 if score @s brown_wool.xuan_ting_priest.move matches 30..60 rotated ~ 0 if block ^0.02 ^ ^-0.1 air run tp @s ^0.02 ^ ^-0.1
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 13 if score @s brown_wool.xuan_ting_priest.move matches 1..29 rotated ~ 0 if block ^0.02 ^ ^0.1 air run tp @s ^0.02 ^ ^0.1

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 14 if score @s brown_wool.xuan_ting_priest.move matches 30..60 rotated ~ 0 if block ^-0.02 ^ ^-0.1 air run tp @s ^-0.02 ^ ^-0.1
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 14 if score @s brown_wool.xuan_ting_priest.move matches 1..29 rotated ~ 0 if block ^-0.02 ^ ^0.1 air run tp @s ^-0.02 ^ ^0.1

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 15 if score @s brown_wool.xuan_ting_priest.move matches 30..60 rotated ~ 0 if block ^0.02 ^ ^-0.1 air run tp @s ^0.02 ^ ^-0.1
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 15 if score @s brown_wool.xuan_ting_priest.move matches 1..29 rotated ~ 0 if block ^0.12 ^ ^ air run tp @s ^0.12 ^ ^

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 16 if score @s brown_wool.xuan_ting_priest.move matches 30..60 rotated ~ 0 if block ^-0.02 ^ ^-0.1 air run tp @s ^-0.02 ^ ^-0.1
execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] if score @s brown_wool.xuan_ting_priest.move_random matches 16 if score @s brown_wool.xuan_ting_priest.move matches 1..29 rotated ~ 0 if block ^-0.12 ^ ^ air run tp @s ^-0.12 ^ ^

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] unless score @s brown_wool.xuan_ting_priest.move matches 1.. if entity @p[distance=7.9..8.1 ,tag=brown_wool.xuan_ting_priest.player] run tag @s add brown_wool.xuan_ting_priest.move0
execute if entity @s[tag=brown_wool.xuan_ting_priest.move0] unless score @s brown_wool.xuan_ting_priest.move matches 1.. store result score @s brown_wool.xuan_ting_priest.move_random run random value 1..16


execute unless score @s brown_wool.xuan_ting_priest.move matches 1.. if score @s brown_wool.xuan_ting_priest.move_random matches 1 run scoreboard players set @s brown_wool.xuan_ting_priest.move 80
execute unless score @s brown_wool.xuan_ting_priest.move matches 1.. if score @s brown_wool.xuan_ting_priest.move_random matches 2 run scoreboard players set @s brown_wool.xuan_ting_priest.move 80
execute unless score @s brown_wool.xuan_ting_priest.move matches 1.. if score @s brown_wool.xuan_ting_priest.move_random matches 3 run scoreboard players set @s brown_wool.xuan_ting_priest.move 100
execute unless score @s brown_wool.xuan_ting_priest.move matches 1.. if score @s brown_wool.xuan_ting_priest.move_random matches 4 run scoreboard players set @s brown_wool.xuan_ting_priest.move 100
execute unless score @s brown_wool.xuan_ting_priest.move matches 1.. if score @s brown_wool.xuan_ting_priest.move_random matches 5 run scoreboard players set @s brown_wool.xuan_ting_priest.move 60
execute unless score @s brown_wool.xuan_ting_priest.move matches 1.. if score @s brown_wool.xuan_ting_priest.move_random matches 6 run scoreboard players set @s brown_wool.xuan_ting_priest.move 60
execute unless score @s brown_wool.xuan_ting_priest.move matches 1.. if score @s brown_wool.xuan_ting_priest.move_random matches 7 run scoreboard players set @s brown_wool.xuan_ting_priest.move 60
execute unless score @s brown_wool.xuan_ting_priest.move matches 1.. if score @s brown_wool.xuan_ting_priest.move_random matches 8 run scoreboard players set @s brown_wool.xuan_ting_priest.move 60
execute unless score @s brown_wool.xuan_ting_priest.move matches 1.. if score @s brown_wool.xuan_ting_priest.move_random matches 9 run scoreboard players set @s brown_wool.xuan_ting_priest.move 80
execute unless score @s brown_wool.xuan_ting_priest.move matches 1.. if score @s brown_wool.xuan_ting_priest.move_random matches 10 run scoreboard players set @s brown_wool.xuan_ting_priest.move 80
execute unless score @s brown_wool.xuan_ting_priest.move matches 1.. if score @s brown_wool.xuan_ting_priest.move_random matches 11 run scoreboard players set @s brown_wool.xuan_ting_priest.move 80
execute unless score @s brown_wool.xuan_ting_priest.move matches 1.. if score @s brown_wool.xuan_ting_priest.move_random matches 12 run scoreboard players set @s brown_wool.xuan_ting_priest.move 80
execute unless score @s brown_wool.xuan_ting_priest.move matches 1.. if score @s brown_wool.xuan_ting_priest.move_random matches 13 run scoreboard players set @s brown_wool.xuan_ting_priest.move 60
execute unless score @s brown_wool.xuan_ting_priest.move matches 1.. if score @s brown_wool.xuan_ting_priest.move_random matches 14 run scoreboard players set @s brown_wool.xuan_ting_priest.move 60
execute unless score @s brown_wool.xuan_ting_priest.move matches 1.. if score @s brown_wool.xuan_ting_priest.move_random matches 15 run scoreboard players set @s brown_wool.xuan_ting_priest.move 60
execute unless score @s brown_wool.xuan_ting_priest.move matches 1.. if score @s brown_wool.xuan_ting_priest.move_random matches 16 run scoreboard players set @s brown_wool.xuan_ting_priest.move 60

execute if block ~ ~-0.1 ~ air run function brown_wool:entity/boss/xuan_ting_priest/return

execute if entity @n[distance=19.5.. ,tag=brown_wool.xuan_ting_priest.terrain ,type=marker ,limit=1] run function brown_wool:entity/boss/xuan_ting_priest/return


execute if entity @s[tag=brown_wool.xuan_ting_priest.move0] if score @s brown_wool.xuan_ting_priest.move matches 1 run scoreboard players reset @s brown_wool.xuan_ting_priest.move_random
execute if entity @s[tag=brown_wool.xuan_ting_priest.move0] if score @s brown_wool.xuan_ting_priest.move matches 1 run tag @s remove brown_wool.xuan_ting_priest.move0

scoreboard players remove @s[scores={brown_wool.xuan_ting_priest.move=1..}] brown_wool.xuan_ting_priest.move 1

execute if entity @s[tag=!brown_wool.xuan_ting_priest.move0.0] run rotate @s facing entity @p[tag=brown_wool.xuan_ting_priest.player]


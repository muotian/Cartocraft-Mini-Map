

# 移動

execute if entity @p[distance=3.. ,tag=brown_wool.thunderous_fiend_rift_fang.player] rotated ~ 0 run tp @s ^ ^ ^0.24
execute if entity @p[distance=..2.9 ,tag=brown_wool.thunderous_fiend_rift_fang.player] rotated ~ 0 run tp @s ^ ^ ^-0.24



execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if entity @p[distance=..3.9 ,tag=brown_wool.thunderous_fiend_rift_fang.player] run scoreboard players add @s brown_wool.thunderous_fiend_rift_fang.move2 1
execute if score @s brown_wool.thunderous_fiend_rift_fang.move2 matches 40.. run tag @s add brown_wool.thunderous_fiend_rift_fang.move0
execute if score @s brown_wool.thunderous_fiend_rift_fang.move2 matches 40.. run scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.move2

execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 20..40 rotated ~ 0 if block ^-0.14 ^ ^0.1 air run tp @s ^-0.14 ^ ^0.1
execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 1 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1..19 rotated ~ 0 if block ^0.06 ^ ^-0.18 air run tp @s ^0.06 ^ ^-0.18

execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 20..40 rotated ~ 0 if block ^0.14 ^ ^0.1 air run tp @s ^0.14 ^ ^0.1
execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 2 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1..19 rotated ~ 0 if block ^-0.06 ^ ^-0.18 air run tp @s ^-0.06 ^ ^-0.18

execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 20..40 rotated ~ 0 if block ^-0.1 ^ ^0.14 air run tp @s ^-0.1 ^ ^0.14
execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 3 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1..19 rotated ~ 0 if block ^0.18 ^ ^-0.06 air run tp @s ^0.18 ^ ^-0.06

execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 20..40 rotated ~ 0 if block ^0.1 ^ ^0.14 air run tp @s ^0.1 ^ ^0.14
execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 4 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1..19 rotated ~ 0 if block ^-0.18 ^ ^-0.06 air run tp @s ^-0.18 ^ ^-0.06

execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 5 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 20..40 rotated ~ 0 if block ^0.24 ^ ^ air run tp @s ^0.24 ^ ^
execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 5 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1..19 rotated ~ 0 if block ^0.04 ^ ^0.2 air run tp @s ^0.04 ^ ^0.2

execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 6 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 20..40 rotated ~ 0 if block ^-0.24 ^ ^ air run tp @s ^-0.24 ^ ^
execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 6 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1..19 rotated ~ 0 if block ^-0.04 ^ ^0.2 air run tp @s ^-0.04 ^ ^0.2

execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 7 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 20..40 rotated ~ 0 if block ^0.04 ^ ^-0.2 air run tp @s ^0.04 ^ ^-0.2
execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 7 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1..19 rotated ~ 0 if block ^-0.04 ^ ^0.2 air run tp @s ^-0.04 ^ ^0.2

execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 8 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 20..40 rotated ~ 0 if block ^-0.04 ^ ^-0.2 air run tp @s ^-0.04 ^ ^-0.2
execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 8 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1..19 rotated ~ 0 if block ^0.04 ^ ^0.2 air run tp @s ^0.04 ^ ^0.2

execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 9 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 20..40 rotated ~ 0 if block ^-0.12 ^ ^-0.12 air run tp @s ^-0.12 ^ ^-0.12
execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 9 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1..19 rotated ~ 0 if block ^0.12 ^ ^0.12 air run tp @s ^0.12 ^ ^0.12

execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 10 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 20..40 rotated ~ 0 if block ^0.12 ^ ^-0.12 air run tp @s ^0.12 ^ ^-0.12
execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 10 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1..19 rotated ~ 0 if block ^-0.12 ^ ^0.12 air run tp @s ^-0.12 ^ ^0.12

execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 11 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 20..40 rotated ~ 0 if block ^-0.12 ^ ^-0.12 air run tp @s ^-0.12 ^ ^-0.12
execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 11 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1..19 rotated ~ 0 if block ^-0.12 ^ ^0.12 air run tp @s ^-0.12 ^ ^0.12

execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 12 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 20..40 rotated ~ 0 if block ^0.12 ^ ^-0.12 air run tp @s ^0.12 ^ ^-0.12
execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 12 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1..19 rotated ~ 0 if block ^0.12 ^ ^0.12 air run tp @s ^0.12 ^ ^0.12

execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 13 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 20..40 rotated ~ 0 if block ^0.04 ^ ^-0.2 air run tp @s ^0.04 ^ ^-0.2
execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 13 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1..19 rotated ~ 0 if block ^0.04 ^ ^0.2 air run tp @s ^0.04 ^ ^0.2

execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 14 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 20..40 rotated ~ 0 if block ^-0.04 ^ ^-0.2 air run tp @s ^-0.04 ^ ^-0.2
execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 14 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1..19 rotated ~ 0 if block ^-0.04 ^ ^0.2 air run tp @s ^-0.04 ^ ^0.2

execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 15 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 20..40 rotated ~ 0 if block ^0.04 ^ ^-0.2 air run tp @s ^0.04 ^ ^-0.2
execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 15 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1..19 rotated ~ 0 if block ^0.24 ^ ^ air run tp @s ^0.24 ^ ^

execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 16 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 20..40 rotated ~ 0 if block ^-0.04 ^ ^-0.2 air run tp @s ^-0.04 ^ ^-0.2
execute if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 16 if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1..19 rotated ~ 0 if block ^-0.24 ^ ^ air run tp @s ^-0.24 ^ ^

execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if entity @p[distance=2.8..3.1 ,tag=brown_wool.thunderous_fiend_rift_fang.player] run tag @s add brown_wool.thunderous_fiend_rift_fang.move0
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.move0] unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. store result score @s brown_wool.thunderous_fiend_rift_fang.move_random run random value 1..16


execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 1 run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.move 40
execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 2 run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.move 40
execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 3 run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.move 40
execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 4 run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.move 40
execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 5 run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.move 40
execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 6 run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.move 40
execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 7 run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.move 40
execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 8 run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.move 40
execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 9 run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.move 40
execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 10 run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.move 40
execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 11 run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.move 40
execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 12 run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.move 40
execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 13 run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.move 40
execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 14 run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.move 40
execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 15 run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.move 40
execute unless score @s brown_wool.thunderous_fiend_rift_fang.move matches 1.. if score @s brown_wool.thunderous_fiend_rift_fang.move_random matches 16 run scoreboard players set @s brown_wool.thunderous_fiend_rift_fang.move 40



execute if block ~ ~-0.1 ~ air run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/return

execute if entity @n[distance=22.. ,tag=brown_wool.thunderous_fiend_rift_fang.terrain ,type=marker ] run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/return



execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.move0] if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1 run scoreboard players reset @s brown_wool.thunderous_fiend_rift_fang.move_random
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang.move0] if score @s brown_wool.thunderous_fiend_rift_fang.move matches 1 run tag @s remove brown_wool.thunderous_fiend_rift_fang.move0

scoreboard players remove @s[scores={brown_wool.thunderous_fiend_rift_fang.move=1..}] brown_wool.thunderous_fiend_rift_fang.move 1

execute run rotate @s facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player]


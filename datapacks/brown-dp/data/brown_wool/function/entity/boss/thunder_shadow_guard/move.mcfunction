# 執行者：雙劍雷影衛
# 執行位置：同上


execute if entity @p[distance=3.. ,tag=brown_wool.thunder_shadow_guard.player] rotated ~ 0 run tp @s ^ ^ ^0.2
execute if entity @p[distance=..2.9 ,tag=brown_wool.thunder_shadow_guard.player] rotated ~ 0 run tp @s ^ ^ ^-0.2



execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if entity @p[distance=..3.9 ,tag=brown_wool.thunder_shadow_guard.player] run scoreboard players add @s brown_wool.thunder_shadow_guard.move2 1
execute if score @s brown_wool.thunder_shadow_guard.move2 matches 40.. run tag @s add brown_wool.thunder_shadow_guard.move0
execute if score @s brown_wool.thunder_shadow_guard.move2 matches 40.. run scoreboard players reset @s brown_wool.thunder_shadow_guard.move2

execute if score @s brown_wool.thunder_shadow_guard.move_random matches 1 if score @s brown_wool.thunder_shadow_guard.move matches 20..40 rotated ~ 0 if block ^-0.11 ^ ^0.09 air run tp @s ^-0.11 ^ ^0.09
execute if score @s brown_wool.thunder_shadow_guard.move_random matches 1 if score @s brown_wool.thunder_shadow_guard.move matches 1..19 rotated ~ 0 if block ^0.07 ^ ^-0.13 air run tp @s ^0.07 ^ ^-0.13

execute if score @s brown_wool.thunder_shadow_guard.move_random matches 2 if score @s brown_wool.thunder_shadow_guard.move matches 20..40 rotated ~ 0 if block ^0.11 ^ ^0.09 air run tp @s ^0.11 ^ ^0.09
execute if score @s brown_wool.thunder_shadow_guard.move_random matches 2 if score @s brown_wool.thunder_shadow_guard.move matches 1..19 rotated ~ 0 if block ^-0.07 ^ ^-0.13 air run tp @s ^-0.07 ^ ^-0.13

execute if score @s brown_wool.thunder_shadow_guard.move_random matches 3 if score @s brown_wool.thunder_shadow_guard.move matches 20..40 rotated ~ 0 if block ^-0.09 ^ ^0.11 air run tp @s ^-0.09 ^ ^0.11
execute if score @s brown_wool.thunder_shadow_guard.move_random matches 3 if score @s brown_wool.thunder_shadow_guard.move matches 1..19 rotated ~ 0 if block ^0.11 ^ ^-0.09 air run tp @s ^0.11 ^ ^-0.09

execute if score @s brown_wool.thunder_shadow_guard.move_random matches 4 if score @s brown_wool.thunder_shadow_guard.move matches 20..40 rotated ~ 0 if block ^0.09 ^ ^0.11 air run tp @s ^0.09 ^ ^0.11
execute if score @s brown_wool.thunder_shadow_guard.move_random matches 4 if score @s brown_wool.thunder_shadow_guard.move matches 1..19 rotated ~ 0 if block ^-0.11 ^ ^-0.09 air run tp @s ^-0.11 ^ ^-0.09

execute if score @s brown_wool.thunder_shadow_guard.move_random matches 5 if score @s brown_wool.thunder_shadow_guard.move matches 20..40 rotated ~ 0 if block ^0.2 ^ ^ air run tp @s ^0.2 ^ ^
execute if score @s brown_wool.thunder_shadow_guard.move_random matches 5 if score @s brown_wool.thunder_shadow_guard.move matches 1..19 rotated ~ 0 if block ^0.06 ^ ^0.14 air run tp @s ^0.06 ^ ^0.14

execute if score @s brown_wool.thunder_shadow_guard.move_random matches 6 if score @s brown_wool.thunder_shadow_guard.move matches 20..40 rotated ~ 0 if block ^-0.2 ^ ^ air run tp @s ^-0.2 ^ ^
execute if score @s brown_wool.thunder_shadow_guard.move_random matches 6 if score @s brown_wool.thunder_shadow_guard.move matches 1..19 rotated ~ 0 if block ^-0.06 ^ ^0.14 air run tp @s ^-0.06 ^ ^0.14

execute if score @s brown_wool.thunder_shadow_guard.move_random matches 7 if score @s brown_wool.thunder_shadow_guard.move matches 20..40 rotated ~ 0 if block ^0.06 ^ ^-0.14 air run tp @s ^0.06 ^ ^-0.14
execute if score @s brown_wool.thunder_shadow_guard.move_random matches 7 if score @s brown_wool.thunder_shadow_guard.move matches 1..19 rotated ~ 0 if block ^-0.06 ^ ^0.14 air run tp @s ^-0.06 ^ ^0.14

execute if score @s brown_wool.thunder_shadow_guard.move_random matches 8 if score @s brown_wool.thunder_shadow_guard.move matches 20..40 rotated ~ 0 if block ^-0.06 ^ ^-0.14 air run tp @s ^-0.06 ^ ^-0.14
execute if score @s brown_wool.thunder_shadow_guard.move_random matches 8 if score @s brown_wool.thunder_shadow_guard.move matches 1..19 rotated ~ 0 if block ^0.06 ^ ^0.14 air run tp @s ^0.06 ^ ^0.14

execute if score @s brown_wool.thunder_shadow_guard.move_random matches 9 if score @s brown_wool.thunder_shadow_guard.move matches 20..40 rotated ~ 0 if block ^-0.1 ^ ^-0.1 air run tp @s ^-0.1 ^ ^-0.1
execute if score @s brown_wool.thunder_shadow_guard.move_random matches 9 if score @s brown_wool.thunder_shadow_guard.move matches 1..19 rotated ~ 0 if block ^0.1 ^ ^0.1 air run tp @s ^0.1 ^ ^0.1

execute if score @s brown_wool.thunder_shadow_guard.move_random matches 10 if score @s brown_wool.thunder_shadow_guard.move matches 20..40 rotated ~ 0 if block ^0.1 ^ ^-0.1 air run tp @s ^0.1 ^ ^-0.1
execute if score @s brown_wool.thunder_shadow_guard.move_random matches 10 if score @s brown_wool.thunder_shadow_guard.move matches 1..19 rotated ~ 0 if block ^-0.1 ^ ^0.1 air run tp @s ^-0.1 ^ ^0.1

execute if score @s brown_wool.thunder_shadow_guard.move_random matches 11 if score @s brown_wool.thunder_shadow_guard.move matches 20..40 rotated ~ 0 if block ^-0.1 ^ ^-0.1 air run tp @s ^-0.1 ^ ^-0.1
execute if score @s brown_wool.thunder_shadow_guard.move_random matches 11 if score @s brown_wool.thunder_shadow_guard.move matches 1..19 rotated ~ 0 if block ^-0.1 ^ ^0.1 air run tp @s ^-0.1 ^ ^0.1

execute if score @s brown_wool.thunder_shadow_guard.move_random matches 12 if score @s brown_wool.thunder_shadow_guard.move matches 20..40 rotated ~ 0 if block ^0.1 ^ ^-0.1 air run tp @s ^0.1 ^ ^-0.1
execute if score @s brown_wool.thunder_shadow_guard.move_random matches 12 if score @s brown_wool.thunder_shadow_guard.move matches 1..19 rotated ~ 0 if block ^0.1 ^ ^0.1 air run tp @s ^0.1 ^ ^0.1

execute if score @s brown_wool.thunder_shadow_guard.move_random matches 13 if score @s brown_wool.thunder_shadow_guard.move matches 20..40 rotated ~ 0 if block ^0.06 ^ ^-0.14 air run tp @s ^0.06 ^ ^-0.14
execute if score @s brown_wool.thunder_shadow_guard.move_random matches 13 if score @s brown_wool.thunder_shadow_guard.move matches 1..19 rotated ~ 0 if block ^0.06 ^ ^0.14 air run tp @s ^0.06 ^ ^0.14

execute if score @s brown_wool.thunder_shadow_guard.move_random matches 14 if score @s brown_wool.thunder_shadow_guard.move matches 20..40 rotated ~ 0 if block ^-0.06 ^ ^-0.14 air run tp @s ^-0.06 ^ ^-0.14
execute if score @s brown_wool.thunder_shadow_guard.move_random matches 14 if score @s brown_wool.thunder_shadow_guard.move matches 1..19 rotated ~ 0 if block ^-0.06 ^ ^0.14 air run tp @s ^-0.06 ^ ^0.14

execute if score @s brown_wool.thunder_shadow_guard.move_random matches 15 if score @s brown_wool.thunder_shadow_guard.move matches 20..40 rotated ~ 0 if block ^0.06 ^ ^-0.14 air run tp @s ^0.06 ^ ^-0.14
execute if score @s brown_wool.thunder_shadow_guard.move_random matches 15 if score @s brown_wool.thunder_shadow_guard.move matches 1..19 rotated ~ 0 if block ^0.2 ^ ^ air run tp @s ^0.2 ^ ^

execute if score @s brown_wool.thunder_shadow_guard.move_random matches 16 if score @s brown_wool.thunder_shadow_guard.move matches 20..40 rotated ~ 0 if block ^-0.06 ^ ^-0.14 air run tp @s ^-0.06 ^ ^-0.14
execute if score @s brown_wool.thunder_shadow_guard.move_random matches 16 if score @s brown_wool.thunder_shadow_guard.move matches 1..19 rotated ~ 0 if block ^-0.2 ^ ^ air run tp @s ^-0.2 ^ ^

execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if entity @p[distance=2.8..3.1 ,tag=brown_wool.thunder_shadow_guard.player] run tag @s add brown_wool.thunder_shadow_guard.move0
execute if entity @s[tag=brown_wool.thunder_shadow_guard.move0] unless score @s brown_wool.thunder_shadow_guard.move matches 1.. store result score @s brown_wool.thunder_shadow_guard.move_random run random value 1..16


execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if score @s brown_wool.thunder_shadow_guard.move_random matches 1 run scoreboard players set @s brown_wool.thunder_shadow_guard.move 40
execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if score @s brown_wool.thunder_shadow_guard.move_random matches 2 run scoreboard players set @s brown_wool.thunder_shadow_guard.move 40
execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if score @s brown_wool.thunder_shadow_guard.move_random matches 3 run scoreboard players set @s brown_wool.thunder_shadow_guard.move 40
execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if score @s brown_wool.thunder_shadow_guard.move_random matches 4 run scoreboard players set @s brown_wool.thunder_shadow_guard.move 40
execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if score @s brown_wool.thunder_shadow_guard.move_random matches 5 run scoreboard players set @s brown_wool.thunder_shadow_guard.move 40
execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if score @s brown_wool.thunder_shadow_guard.move_random matches 6 run scoreboard players set @s brown_wool.thunder_shadow_guard.move 40
execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if score @s brown_wool.thunder_shadow_guard.move_random matches 7 run scoreboard players set @s brown_wool.thunder_shadow_guard.move 40
execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if score @s brown_wool.thunder_shadow_guard.move_random matches 8 run scoreboard players set @s brown_wool.thunder_shadow_guard.move 40
execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if score @s brown_wool.thunder_shadow_guard.move_random matches 9 run scoreboard players set @s brown_wool.thunder_shadow_guard.move 40
execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if score @s brown_wool.thunder_shadow_guard.move_random matches 10 run scoreboard players set @s brown_wool.thunder_shadow_guard.move 40
execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if score @s brown_wool.thunder_shadow_guard.move_random matches 11 run scoreboard players set @s brown_wool.thunder_shadow_guard.move 40
execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if score @s brown_wool.thunder_shadow_guard.move_random matches 12 run scoreboard players set @s brown_wool.thunder_shadow_guard.move 40
execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if score @s brown_wool.thunder_shadow_guard.move_random matches 13 run scoreboard players set @s brown_wool.thunder_shadow_guard.move 40
execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if score @s brown_wool.thunder_shadow_guard.move_random matches 14 run scoreboard players set @s brown_wool.thunder_shadow_guard.move 40
execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if score @s brown_wool.thunder_shadow_guard.move_random matches 15 run scoreboard players set @s brown_wool.thunder_shadow_guard.move 40
execute unless score @s brown_wool.thunder_shadow_guard.move matches 1.. if score @s brown_wool.thunder_shadow_guard.move_random matches 16 run scoreboard players set @s brown_wool.thunder_shadow_guard.move 40


execute if entity @s[tag=!brown_wool.thunder_shadow_guard.cast] if block ~ ~-0.1 ~ air run function brown_wool:entity/boss/thunder_shadow_guard/return

execute if entity @s[tag=!brown_wool.thunder_shadow_guard.cast] if entity @e[distance=16.. ,tag=brown_wool.thunder_shadow_guard.terrain ,type=marker ,limit=1] run function brown_wool:entity/boss/thunder_shadow_guard/return

execute if entity @s[tag=brown_wool.thunder_shadow_guard.move0] if score @s brown_wool.thunder_shadow_guard.move matches 1 run scoreboard players reset @s brown_wool.thunder_shadow_guard.move_random
execute if entity @s[tag=brown_wool.thunder_shadow_guard.move0] if score @s brown_wool.thunder_shadow_guard.move matches 1 run tag @s remove brown_wool.thunder_shadow_guard.move0

scoreboard players remove @s[scores={brown_wool.thunder_shadow_guard.move=1..}] brown_wool.thunder_shadow_guard.move 1

execute run rotate @s facing entity @p[tag=brown_wool.thunder_shadow_guard.player]










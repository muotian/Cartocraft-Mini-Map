#
tag @s remove pink.abnormal_gravity
scoreboard players set @s pink.monster.gravity.jump 0
scoreboard players set @s pink.monster.gravity.last_time 0

particle minecraft:witch ~ ~1.5 ~ .2 .2 .2 1 15

effect give @s slow_falling 4 0 true

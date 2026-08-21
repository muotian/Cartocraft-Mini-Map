
tag @s add white.atker
execute as @e[type=#white:hostile,distance=0.2..5] at @s facing entity @e[tag=white.atker,type=marker,limit=1] feet positioned ^ ^ ^0.2 run function white:move/temptation/blackhole/3b
tag @s remove white.atker
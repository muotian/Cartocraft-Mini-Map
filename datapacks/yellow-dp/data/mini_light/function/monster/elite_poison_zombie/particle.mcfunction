

particle minecraft:dust{color:[0.137,0.824,0.00],scale:0.7} ^ ^ ^1 .2 0 .2 0 10
particle minecraft:dust{color:[0.137,0.824,0.00],scale:0.7} ^ ^ ^1.3 .2 0 .2 0 10
particle minecraft:dust{color:[0.141,0.776,0.00],scale:0.7} ^ ^ ^1.6 .2 0 .2 0 10
particle minecraft:dust{color:[0.141,0.776,0.00],scale:0.7} ^ ^ ^2 .2 0 .2 0 10
particle minecraft:dust{color:[0.094,0.514,0.00],scale:0.7} ^ ^ ^2.3 .2 0 .2 0 10
particle minecraft:dust{color:[0.055,0.294,0.00],scale:0.7} ^ ^ ^2.6 .2 0 .2 0 10
particle minecraft:dust{color:[0.024,0.129,0.00],scale:0.7} ^ ^ ^3 .2 0 .2 0 10
particle minecraft:dust{color:[0.024,0.129,0.00],scale:0.7} ^ ^ ^3.3 .2 0 .2 0 10

execute positioned ^ ^ ^2.3 run effect give @a[distance=..2] poison 5 1
execute positioned ^ ^ ^2.3 as @a[distance=..2] run damage @s 4 mini_light:elite_poison_zombie

tp @s ~ ~ ~ ~12 0

#particle dust 0.024 0.129 0 00 0 

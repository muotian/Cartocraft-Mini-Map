#lazer1
execute facing entity @n[tag=black.mob2_lazer.2] eyes run tp @s ^ ^ ^0.39
particle flame ~ ~ ~ 0.1 0 0.1 0 10 force
execute as @a[dx=0,dy=0,dz=0] run damage @s 27 black:cd_sc by @n[tag=black.elite2]
tag @n[tag=black.mob2_lazer.2,distance=..0.5] add black_lazer.2_act
execute if entity @n[tag=black.mob2_lazer.2,distance=..0.5] run kill @s


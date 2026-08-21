
execute if entity @s[tag=white.move.liuhsu.touched] run return run function white:move/liuhsu/line/touched/main

execute positioned ~ ~-1 ~ facing entity @a[predicate=white:move/liuhsu/hsu,limit=1] feet positioned as @s positioned ^ ^ ^0.3 run tp ~ ~ ~
execute if function white:move/liuhsu/line/is_touch/hsu run function white:move/liuhsu/line/2

# fx
particle end_rod ~ ~ ~ 0 0 0 1000000 1 force
particle dust{color:[0.780,1.000,0.933],scale:1} ~ ~ ~ 0 0 0 0 0 force
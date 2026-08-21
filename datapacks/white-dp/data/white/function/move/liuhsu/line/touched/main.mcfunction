
execute positioned ~ ~-1 ~ facing entity @a[predicate=white:move/liuhsu/liu,limit=1] feet positioned as @s positioned ^ ^ ^0.3 run tp ~ ~ ~
execute if function white:move/liuhsu/line/is_touch/liu run function white:move/liuhsu/line/touched/2

# fx
particle end_rod ~ ~ ~ 0 0 0 1000000 1 force
particle dust{color:[0.490,0.557,1.000],scale:1} ~ ~ ~ 0 0 0 0 0 force


tag @e[tag=white.move.target2,type=block_display,sort=furthest,limit=1] add white.move.target3

execute facing entity @e[tag=white.move.target3,type=block_display,limit=1] feet run function white:move/crayon_boots/is_enclose/4

tag @e[tag=white.move.target3,type=block_display,limit=1] remove white.move.target3
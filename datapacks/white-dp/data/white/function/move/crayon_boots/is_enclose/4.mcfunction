
execute if entity @e[tag=white.move.target3,type=block_display,distance=..1,limit=1] run return fail

execute align xyz positioned ~ ~-1 ~ run tag @e[predicate=white:move/crayon_boots,dx=0,dy=3,dz=0] add white.victim

execute positioned ^ ^ ^1 run function white:move/crayon_boots/is_enclose/4
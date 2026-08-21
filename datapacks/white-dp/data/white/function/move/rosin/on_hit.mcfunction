
execute if score @s white.move.rosin.cd matches 1.. run return fail

tag @s add white.move.rosin.on_hit
execute as @e[tag=white.victim,distance=..8,limit=1] at @s run function white:move/rosin/victim
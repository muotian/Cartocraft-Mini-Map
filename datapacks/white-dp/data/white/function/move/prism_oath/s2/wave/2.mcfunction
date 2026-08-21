
execute positioned ^ ^ ^1 run tp ~ ~ ~
execute as @e[predicate=white:mob/victim,predicate=white:flags/is_on_ground,distance=..3] run tag @s add white.victim

# fx
execute positioned ^ ^ ^1.0 run function white:move/prism_oath/s2/wave/2b
execute positioned ^ ^ ^0.75 run function white:move/prism_oath/s2/wave/2b
execute positioned ^ ^ ^0.5 run function white:move/prism_oath/s2/wave/2b
execute positioned ^ ^ ^0.25 run function white:move/prism_oath/s2/wave/2b
execute positioned ^ ^ ^0 run function white:move/prism_oath/s2/wave/2b

execute as @e[predicate=white:mob/victim,distance=..4] run tag @s add white.victim
return run execute if entity @e[tag=white.victim,distance=..4,limit=1]
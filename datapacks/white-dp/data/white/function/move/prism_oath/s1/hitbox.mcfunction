
execute as @e[predicate=white:mob/victim,distance=..8] if function white:sys/hitbox/4x4x4 run tag @s add white.victim
return run execute if entity @e[tag=white.victim,distance=..8,limit=1]
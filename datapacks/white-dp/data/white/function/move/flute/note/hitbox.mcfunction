
execute as @e[type=#white:hostile,distance=..12] if function white:sys/hitbox/0.5x0.5x0.5 run return run tag @s add white.victim
return run execute if entity @e[tag=white.victim,distance=..12,limit=1]
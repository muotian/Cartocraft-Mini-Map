
execute unless block ~0.2 ~ ~ #white:transparent if entity @s[y_rotation=-179.9..-0.1] run return 1
execute unless block ~-0.2 ~ ~ #white:transparent if entity @s[y_rotation=0.1..179.9] run return 1
execute if entity @s[y_rotation=-179.9..-0.1] positioned ~0.2 ~ ~ positioned ~-0.5 ~ ~-0.5 as @e[type=#white:hostile,dx=0,dy=0,dz=0,limit=1] run return run tag @s add white.victim
execute if entity @s[y_rotation=0.1..179.9] positioned ~-0.2 ~ ~ positioned ~-0.5 ~ ~-0.5 as @e[type=#white:hostile,dx=0,dy=0,dz=0,limit=1] run return run tag @s add white.victim
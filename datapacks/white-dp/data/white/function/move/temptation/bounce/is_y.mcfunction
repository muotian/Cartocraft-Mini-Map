
execute unless block ~ ~0.2 ~ #white:transparent if entity @s[x_rotation=-90.0..-0.1] run return 1
execute unless block ~ ~-0.2 ~ #white:transparent if entity @s[x_rotation=0.1..90.0] run return 1
execute positioned ~ ~0.2 ~ if entity @s[x_rotation=-90.0..-0.1] positioned ~-0.5 ~ ~-0.5 as @e[type=#white:hostile,dx=0,dy=0,dz=0,limit=1] run return run tag @s add white.victim
execute positioned ~ ~-0.2 ~ if entity @s[x_rotation=0.1..90.0] positioned ~-0.5 ~ ~-0.5 as @e[type=#white:hostile,dx=0,dy=0,dz=0,limit=1] run return run tag @s add white.victim
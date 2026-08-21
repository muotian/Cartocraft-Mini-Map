
function white:sys/mob/charge/start_nomove
tag @s add white.mob.golden_fantasy.1

execute facing entity @p[predicate=white:player] feet rotated ~ -60 run function white:sys/motion {s:1}

# fx
data modify entity @s Glowing set value true
playsound minecraft:entity.goat.long_jump master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.vindicator.celebrate master @a ~ ~ ~ 1 1

particle dust{color:[1.000,0.898,0.380],scale:1} ~ ~1 ~ 0.2 0.5 0.2 0 50 force

particle smoke ~ ~ ~ 1.5 0 0.0 0.05 0 force
particle smoke ~ ~ ~ 1.477 0 0.26 0.05 0 force
particle smoke ~ ~ ~ 1.41 0 0.513 0.05 0 force
particle smoke ~ ~ ~ 1.299 0 0.75 0.05 0 force
particle smoke ~ ~ ~ 1.149 0 0.964 0.05 0 force
particle smoke ~ ~ ~ 0.964 0 1.149 0.05 0 force
particle smoke ~ ~ ~ 0.75 0 1.299 0.05 0 force
particle smoke ~ ~ ~ 0.513 0 1.41 0.05 0 force
particle smoke ~ ~ ~ 0.26 0 1.477 0.05 0 force
particle smoke ~ ~ ~ 0.0 0 1.5 0.05 0 force
particle smoke ~ ~ ~ -0.26 0 1.477 0.05 0 force
particle smoke ~ ~ ~ -0.513 0 1.41 0.05 0 force
particle smoke ~ ~ ~ -0.75 0 1.299 0.05 0 force
particle smoke ~ ~ ~ -0.964 0 1.149 0.05 0 force
particle smoke ~ ~ ~ -1.149 0 0.964 0.05 0 force
particle smoke ~ ~ ~ -1.299 0 0.75 0.05 0 force
particle smoke ~ ~ ~ -1.41 0 0.513 0.05 0 force
particle smoke ~ ~ ~ -1.477 0 0.26 0.05 0 force
particle smoke ~ ~ ~ -1.5 0 0.0 0.05 0 force
particle smoke ~ ~ ~ -1.477 0 -0.26 0.05 0 force
particle smoke ~ ~ ~ -1.41 0 -0.513 0.05 0 force
particle smoke ~ ~ ~ -1.299 0 -0.75 0.05 0 force
particle smoke ~ ~ ~ -1.149 0 -0.964 0.05 0 force
particle smoke ~ ~ ~ -0.964 0 -1.149 0.05 0 force
particle smoke ~ ~ ~ -0.75 0 -1.299 0.05 0 force
particle smoke ~ ~ ~ -0.513 0 -1.41 0.05 0 force
particle smoke ~ ~ ~ -0.26 0 -1.477 0.05 0 force
particle smoke ~ ~ ~ -0.0 0 -1.5 0.05 0 force
particle smoke ~ ~ ~ 0.26 0 -1.477 0.05 0 force
particle smoke ~ ~ ~ 0.513 0 -1.41 0.05 0 force
particle smoke ~ ~ ~ 0.75 0 -1.299 0.05 0 force
particle smoke ~ ~ ~ 0.964 0 -1.149 0.05 0 force
particle smoke ~ ~ ~ 1.149 0 -0.964 0.05 0 force
particle smoke ~ ~ ~ 1.299 0 -0.75 0.05 0 force
particle smoke ~ ~ ~ 1.41 0 -0.513 0.05 0 force
particle smoke ~ ~ ~ 1.477 0 -0.26 0.05 0 force
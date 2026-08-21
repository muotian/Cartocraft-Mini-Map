
particle end_rod ~ ~ ~ 0 0 0 1000000 1 force
particle bubble_pop ~ ~ ~ 0.05 0.05 0.05 0 2 force

execute if function white:move/muse/laser/hitbox run return run function white:move/muse/laser/hit

scoreboard players remove #range white.main 5
execute if score #range white.main matches 1.. positioned ^ ^ ^0.5 run function white:move/muse/laser/use
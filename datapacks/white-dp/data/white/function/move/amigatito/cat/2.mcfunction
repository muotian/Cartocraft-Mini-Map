
tp ~ ~ ~
execute as @e[predicate=white:mob/victim,tag=!white.move.amitatito.cat,tag=!white.victim,distance=..3] if function white:sys/hitbox/0.25x0.5x0.25 run tag @s add white.victim

# fx
execute positioned ^ ^ ^-2 run particle dust_color_transition{from_color:[1.000,0.451,0.451],to_color:[0.561,0.251,0.094],scale:0.75} ~ ~0.5 ~ 0.1 0.05 0.1 0 1 normal
execute positioned ^ ^ ^-2 run particle dust_color_transition{from_color:[1.000,0.965,0.478],to_color:[0.443,0.561,0.118],scale:0.75} ~ ~0.25 ~ 0.1 0.05 0.1 0 1 normal
execute positioned ^ ^ ^-2 run particle dust_color_transition{from_color:[0.490,1.000,0.627],to_color:[0.141,0.561,0.463],scale:0.75} ~ ~ ~ 0.1 0.05 0.1 0 1 normal
execute positioned ^ ^ ^-2 run particle dust_color_transition{from_color:[0.490,0.627,1.000],to_color:[0.180,0.141,0.561],scale:0.75} ~ ~-.25 ~ 0.1 0.05 0.1 0 1 normal
execute positioned ^ ^ ^-2 run particle dust_color_transition{from_color:[0.557,0.490,1.000],to_color:[0.459,0.122,0.561],scale:0.75} ~ ~-.5 ~ 0.1 0.05 0.1 0 1 normal

# loop
scoreboard players remove #loop white.main 1
execute unless block ^ ^ ^0.25 #white:transparent run return fail
execute if score #loop white.main matches ..0 run return fail
execute positioned ^ ^ ^0.25 run function white:move/amigatito/cat/2
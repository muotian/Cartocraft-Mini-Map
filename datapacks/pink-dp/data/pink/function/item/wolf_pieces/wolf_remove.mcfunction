#
kill @s
tp @s ~ ~-1000 ~

particle minecraft:end_rod ~ ~.5 ~ 0 0 0 .1 8
particle dust_color_transition{from_color:[0.780,0.490,1.000],to_color:[0.902,1.000,1.000],scale:2.5} ~ ~.5 ~ .3 .3 .3 0 3 normal



stopsound @a * minecraft:entity.wolf.death
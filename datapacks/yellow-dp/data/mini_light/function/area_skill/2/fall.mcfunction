tp @s ~ ~-.7 ~

execute positioned ~-.5 ~.5 ~-.5 if entity @e[tag=mini_light.fall_stone_target,dx=0,dy=0,dz=0] run function mini_light:area_skill/2/hit_2

particle block{block_state:"stone"} ~ ~1 ~ .3 .5 .3 1 5


execute if predicate {condition:"location_check", predicate:{position:{y:{max:-63}}}} run function mini_light:area_skill/2/kill

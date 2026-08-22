scoreboard players add @s gray.distance 1


execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=parched,tag=gray.dune_recluse,tag=gray.dune_recluse.temp,dx=0,dy=0,dz=0,limit=1] run tag @s add gray.dune_recluse.discovered

execute unless function ccmini_gray:mob/dune_recluse/if_end positioned ^ ^ ^1 run function ccmini_gray:mob/dune_recluse/raycast
scoreboard players reset @s gray.distance
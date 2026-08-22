execute if score @s gray.distance matches 60 run return 1
execute unless block ~ ~ ~ #ccmini_gray:transparent run return 1
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!player,dx=0,dy=0,dz=0,nbt={DeathTime:0s}] run return 1
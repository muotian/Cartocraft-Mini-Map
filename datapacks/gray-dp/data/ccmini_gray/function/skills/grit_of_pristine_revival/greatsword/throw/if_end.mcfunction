execute if score @s gray.distance matches 20 run return 1
execute unless block ~ ~ ~ #ccmini_gray:transparent run return 1
execute positioned ~-1 ~-1 ~-1 if entity @e[dx=1,dy=1,dz=1,type=!player,type=!armor_stand,nbt={DeathTime:0s}] run return 1
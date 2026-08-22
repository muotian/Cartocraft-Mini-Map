scoreboard players add @s gray.distance 1
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!player,dx=0,dy=0,dz=0,nbt={DeathTime:0s}] positioned ^ ^ ^0.5 run return run function ccmini_gray:skills/sand_forge_sword/rightclickattack
execute if function ccmini_gray:skills/sand_forge_sword/if_end positioned ^ ^ ^-0.5 run return run function ccmini_gray:skills/sand_forge_sword/rightclickattack

execute positioned ^ ^ ^0.5 run function ccmini_gray:skills/sand_forge_sword/locate
scoreboard players reset @s gray.distance
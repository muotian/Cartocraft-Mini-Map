scoreboard players add @s gray.distance 1
particle falling_dust{block_state:{Name:sand}} ~ ~ ~ 0.3 0.3 0.3 0 3
particle sweep_attack ~ ~ ~ 0.5 0.5 0.5 0 1
tag @s add gray.user
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=1,dy=1,dz=1,type=!player,type=!armor_stand,nbt={DeathTime:0s}] run damage @s 5 player_attack by @a[tag=gray.user,limit=1]
tag @s remove gray.user

execute if function ccmini_gray:skills/grit_of_pristine_revival/shortsword/rightclick/if_end positioned ^ ^ ^-0.5 run return run function ccmini_gray:skills/grit_of_pristine_revival/shortsword/rightclick/flash
execute positioned ^ ^ ^0.5 run function ccmini_gray:skills/grit_of_pristine_revival/shortsword/rightclick/raycast
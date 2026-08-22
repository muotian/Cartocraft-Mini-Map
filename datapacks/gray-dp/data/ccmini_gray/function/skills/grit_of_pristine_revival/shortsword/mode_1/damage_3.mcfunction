execute as @a if score @s gray.id = @e[type=marker,tag=gray.temp,tag=gray.locator,limit=1] gray.id run tag @s add gray.user
execute positioned ~-1 ~-1 ~-1 if entity @e[dx=1,dy=1,dz=1,type=!player,type=!armor_stand,nbt={DeathTime:0s},nbt=!{Invulnerable:true}] at @s run function ccmini_gray:skills/grit_of_pristine_revival/shortsword/if_hit
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,type=!player,type=!armor_stand,nbt={DeathTime:0s}] run damage @s 15 player_attack by @a[tag=gray.user,limit=1]
tag @a remove gray.user
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,tag=gray.boss.can_break] run kill @s
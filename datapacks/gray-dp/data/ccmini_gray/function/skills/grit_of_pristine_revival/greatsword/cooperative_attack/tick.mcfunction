tp ^ ^ ^1.5
scoreboard players add @s gray.distance 1
tag @s add gray.temp
execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,type=!player,type=!armor_stand,nbt={DeathTime:0s},nbt=!{Invulnerable:true}] run damage @s 12 ccmini_gray:physical_damage_nocd by @e[type=item_display,tag=gray.temp,limit=1]
tag @s remove gray.temp
execute if score @s gray.distance matches 20.. run kill @s

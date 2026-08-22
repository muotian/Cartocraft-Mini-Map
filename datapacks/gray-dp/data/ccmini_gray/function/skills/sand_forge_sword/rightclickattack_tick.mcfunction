tag @s add gray.temp
execute as @a if score @s gray.id = @e[type=item_display,tag=gray.temp,limit=1] gray.id run tag @s add gray.user
scoreboard players add @s gray.distance 1
tp ^ ^ ^1
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,type=!player,type=!armor_stand,nbt={DeathTime:0s}] run damage @s 5 ccmini_gray:physical_damage_nocd by @e[tag=gray.temp,limit=1] from @a[tag=gray.user,limit=1]
execute as @s[tag=gray.sand_forge_sword.rightclick_attack_2] positioned ~-2 ~-2 ~-2 as @e[dx=3,dy=3,dz=3,type=!player,type=!armor_stand,nbt={DeathTime:0s}] run damage @s 10 ccmini_gray:physical_damage_nocd by @e[tag=gray.temp,limit=1] from @a[tag=gray.user,limit=1]
execute positioned ^ ^ ^1.2 positioned ~-1 ~-1 ~-1 if entity @e[dx=1,dy=1,dz=1,type=marker,tag=gray.sand_forge_sword.attack_target] run tag @s add gray.sand_forge_sword.rightclick_attack_stop
execute as @s[tag=gray.sand_forge_sword.rightclick_attack_2] positioned ^ ^ ^2 positioned ~-1 ~-1 ~-1 if entity @e[dx=1,dy=1,dz=1,type=marker,tag=gray.sand_forge_sword.attack_target] run tag @s add gray.sand_forge_sword.rightclick_attack_stop
execute if score @s gray.distance matches 10.. run tag @s add gray.sand_forge_sword.rightclick_attack_stop
tag @s remove gray.temp
tag @a remove user
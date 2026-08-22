scoreboard players add @s gray.distance 1
tag @s add gray.sand_forge_sword.shot.temp
execute as @a if score @s gray.id = @e[tag=gray.sand_forge_sword.shot.temp,limit=1] gray.id run tag @s add gray.user
tp ^ ^ ^1.2
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!player,type=!armor_stand,nbt={DeathTime:0s},dx=0,dy=0,dz=0] run damage @s 6 player_attack by @a[tag=gray.user,limit=1]
tag @a remove gray.user 
execute unless block ~ ~ ~ #ccmini_gray:transparent run kill @s
execute unless block ~0.4 ~ ~ #ccmini_gray:transparent run kill @s
execute unless block ~-0.4 ~ ~ #ccmini_gray:transparent run kill @s
execute unless block ~ ~ ~0.4 #ccmini_gray:transparent run kill @s
execute unless block ~ ~ ~-0.4 #ccmini_gray:transparent run kill @s
execute unless block ~ ~0.4 ~ #ccmini_gray:transparent run kill @s
execute unless block ~ ~-0.4 ~ #ccmini_gray:transparent run kill @s
execute if score @s gray.distance matches 30.. run kill @s
tag @s remove gray.sand_forge_sword.shot.temp
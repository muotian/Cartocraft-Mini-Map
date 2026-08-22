execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,type=!player,type=!armor_stand,nbt={DeathTime:0s}] run effect give @s slowness 3 5 false
summon marker ~ ~ ~ {Tags:[gray.sand_forge_sword.attack_target,gray.new]}
scoreboard players set @e[type=marker,tag=gray.new] gray.sfs_attack 60
scoreboard players operation @e[type=marker,tag=gray.new] gray.id = @s gray.id
tag @e[type=marker,tag=gray.new] remove gray.new

execute as @e[dx=1,dy=1,dz=1,type=!player,type=!armor_stand,nbt={DeathTime:0s},nbt=!{Invulnerable:true}] run tag @s add gray.gopr.ca.target

execute as @a if score @s gray.id = @e[type=marker,tag=gray.temp,limit=1] gray.id run tag @s add gray.user
playsound minecraft:entity.player.attack.crit player @a[tag=gray.user,tag=!gray.gopr.hit_cd,limit=1] ~ ~ ~ 0.5 1
execute if score $gopr_skill_locked gray.map_event matches -1 as @a[tag=gray.user,limit=1] unless score @s gray.gopr_cooperative_attack.cd matches 1.. run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/cooperative_attack/start

particle explosion_emitter
tag @s add gray.temp
execute as @a if score @s gray.id = @e[type=item_display,tag=gray.temp,distance=..1,limit=1] gray.id run tag @s add gray.gopr.user
execute positioned ~-3 ~-3 ~-3 as @e[dx=5,dy=5,dz=5,type=!player,type=!armor_stand,nbt={DeathTime:0s}] run damage @s 20 player_attack by @e[tag=gray.temp,limit=1] from @a[tag=gray.gopr.user,limit=1]
function ccmini_gray:skills/grit_of_pristine_revival/greatsword/throw/owner_offline
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1.5 1
tag @a remove gray.gopr.user
tag @s remove gray.temp
function animated_java:gray_gopr/remove/this
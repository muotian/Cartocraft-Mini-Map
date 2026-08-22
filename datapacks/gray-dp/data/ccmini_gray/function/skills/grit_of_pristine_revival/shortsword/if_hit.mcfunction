execute as @a if score @s gray.id = @e[type=marker,tag=gray.temp,limit=1] gray.id run tag @s add gray.user
execute as @a[tag=gray.user,tag=!gray.gopr.hit_cd,limit=1] unless score @s gray.gopr_energy matches 20.. run scoreboard players add @s gray.gopr_energy 1
playsound minecraft:entity.player.attack.strong player @a[tag=gray.user,tag=!gray.gopr.hit_cd,limit=1] ~ ~ ~ 1 1
tag @a[tag=gray.user] add gray.gopr.hit_cd
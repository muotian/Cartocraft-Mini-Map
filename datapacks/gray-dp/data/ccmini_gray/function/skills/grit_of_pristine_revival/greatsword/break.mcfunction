execute as @a if score @s gray.id = @e[type=marker,tag=gray.temp,tag=gray.locator,limit=1] gray.id run tag @s add gray.user
execute unless score @a[tag=gray.user,limit=1] gray.gopr_energy matches 1.. at @s run playsound entity.zombie.break_wooden_door player @a ~ ~ ~ 0.8 1
execute unless score @a[tag=gray.user,limit=1] gray.gopr_energy matches 1.. at @s run particle block{block_state:{Name:sandstone}} ~ ~ ~ 0 0 0 0 10
tag @a remove gray.user
execute as @a if score @s gray.id = @e[type=marker,tag=gray.temp,tag=gray.locator,limit=1] gray.id run tag @s add gray.user
execute as @a[tag=gray.user,limit=1] at @s run scoreboard players set @s gray.gopr_mode 2

tag @a remove gray.user
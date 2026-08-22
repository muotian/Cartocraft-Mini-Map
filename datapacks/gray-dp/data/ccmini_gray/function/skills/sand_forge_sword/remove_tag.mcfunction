tag @s add gray.temp
execute as @a if score @s gray.id = @e[type=marker,tag=gray.temp,limit=1] gray.id run tag @s remove gray.taking_sfs
tag @s remove gray.temp
kill @s
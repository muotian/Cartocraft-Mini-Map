execute as @a if score @s gray.id = @e[type=marker,tag=gray.temp,tag=gray.locator,limit=1] gray.id run tag @s add gray.user
tag @a[tag=gray.user,limit=1] remove gray.gopr.hit_cd
tag @a remove gray.user
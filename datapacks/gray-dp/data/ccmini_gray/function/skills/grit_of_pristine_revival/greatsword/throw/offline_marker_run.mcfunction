tag @s add gray.temp
execute as @a if score @s gray.id = @e[type=marker,tag=gray.temp,limit=1] gray.id run tag @s add gray.gopr.user
execute as @a[tag=gray.gopr.user,limit=1] at @s run function ccmini_gray:skills/grit_of_pristine_revival/greatsword/switch
execute if entity @a[tag=gray.gopr.user,limit=1] run kill @s
tag @s remove gray.temp
tag @a remove gray.gopr.user
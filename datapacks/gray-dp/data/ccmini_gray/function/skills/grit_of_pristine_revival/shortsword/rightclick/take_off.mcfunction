execute as @a if score @s gray.id = @e[type=marker,tag=gray.temp,tag=gray.locator,limit=1] gray.id run tag @s add gray.user
execute as @a[tag=gray.user,limit=1] at @s run function ccmini_gray:skills/grit_of_pristine_revival/take_off

tag @a remove gray.user
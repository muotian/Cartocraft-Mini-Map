tag @s add gray.temp
execute as @a if score @s gray.id = @e[type=item_display,tag=gray.temp,limit=1] gray.id run tag @s add gray.owner
execute unless entity @a[tag=gray.owner] run function ccmini_gray:skills/sand_forge_sword/offline

tag @s remove gray.temp
tag @a remove gray.owner
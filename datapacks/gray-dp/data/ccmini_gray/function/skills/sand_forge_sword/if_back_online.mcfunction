tag @s add gray.temp
execute as @a if score @s gray.id = @e[type=marker,tag=gray.temp,limit=1] gray.id run tag @s add gray.owner
execute if entity @a[tag=gray.owner] at @s run function ccmini_gray:skills/sand_forge_sword/remove_tag
tag @s remove gray.temp
tag @a remove gray.owner
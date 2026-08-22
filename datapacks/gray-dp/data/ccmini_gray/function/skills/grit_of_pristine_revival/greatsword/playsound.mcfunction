execute as @a if score @s gray.id = @e[type=marker,tag=gray.temp,tag=gray.locator,limit=1] gray.id run tag @s add gray.user
execute as @a[tag=gray.user] at @s positioned ^3 ^ ^ run playsound minecraft:entity.player.attack.sweep player @s ~ ~ ~ 2 0.8
execute as @a[tag=gray.user] at @s positioned ^3 ^ ^ run playsound minecraft:item.trident.throw player @s ~ ~ ~ 2 0.1
tag @a remove gray.user
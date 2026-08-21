execute as @e[tag=aj.piglin_girl_head.root,limit=1,distance=..30] at @s anchored eyes facing entity @n[tag=light_green.target] eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^2 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ ~7.5
execute facing entity @n[tag=light_green.target] feet as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] at @s anchored eyes facing entity @n[tag=light_green.target] feet positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^4 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0

execute unless entity @n[tag=light_green.damage_locator,type=marker] run return fail
execute facing entity @n[tag=light_green.target] feet as @e[tag=aj.piglin_girl.root,limit=1,distance=..30] at @s anchored eyes facing entity @n[tag=light_green.damage_locator] feet positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^4 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~ 0

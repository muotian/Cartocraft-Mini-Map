#> assist:gateway/player/button_lc

tag @s add assist.gateway.pressor

execute store result score $gametime assist.gateway run time query gametime
execute as @e[type=minecraft:interaction,tag=assist.gateway.button] if function assist:gateway/player/button_lc.check at @s run function assist:gateway/button/pressed

tag @s remove assist.gateway.pressor
advancement revoke @s only assist:gateway.button_lc

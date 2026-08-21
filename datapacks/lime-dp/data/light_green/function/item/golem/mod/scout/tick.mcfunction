tag @s add light_green.scout
execute as @e[type=!#light_green:no_hp,distance=1..50] run function light_green:item/golem/mod/scout/glow
scoreboard players set @s light_green.scout 2
tag @s remove light_green.scout
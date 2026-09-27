execute if predicate light_green:y run return fail
execute unless entity @s[gamemode=survival] run return fail
tellraw @s [{text:"[!]"},{translate:"light_green:area_advence"}]
tag @s add light_green.adventure
gamemode adventure @s
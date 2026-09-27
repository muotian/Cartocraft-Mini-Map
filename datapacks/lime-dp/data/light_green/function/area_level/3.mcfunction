execute unless predicate light_green:y run return fail
execute unless entity @s[gamemode=adventure] run return run tag @s remove light_green.adventure
tellraw @s [{text:"[!]"},{translate:"light_green:area_advence_leave"}]
tag @s remove light_green.adventure
gamemode survival @s
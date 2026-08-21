execute store result score $y light_green.main.math run data get entity @s Pos[1]
execute if score $y light_green.main.math <= $level_y light_green.main.math run return fail
execute unless entity @s[gamemode=survival] run return fail
tellraw @s [{text:"[!]"},{translate:"light_green:area_advence"}]
tag @s add light_green.adventure
gamemode adventure @s
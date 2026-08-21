execute store result score $y light_green.main.math run data get entity @s Pos[1]
execute if score $y light_green.main.math >= $level_y light_green.main.math if entity @e[tag=light_green.summon.graud_golem,type=marker,limit=1] run return fail
execute unless entity @s[gamemode=adventure] run return run tag @s remove light_green.adventure
tellraw @s [{text:"[!]"},{translate:"light_green:area_advence_leave"}]
tag @s remove light_green.adventure
gamemode survival @s
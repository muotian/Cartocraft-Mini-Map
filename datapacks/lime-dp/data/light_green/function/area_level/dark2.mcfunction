execute store result score $y light_green.main.math run data get entity @s Pos[1]
execute if score $y light_green.main.math <= $level_y light_green.main.math run return fail
execute if entity @s[gamemode=!survival,gamemode=!adventure] run return fail
execute unless score $piglin_girl.already1 light_green.main.math matches 1 run function light_green:area_level/dialog
effect give @s blindness 2 0 true
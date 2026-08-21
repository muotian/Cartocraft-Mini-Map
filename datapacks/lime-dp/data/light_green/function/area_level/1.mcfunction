execute store result score $level_y light_green.main.math run data get entity @s Pos[1]
scoreboard players add $level_y light_green.main.math 49
execute unless score $area_end light_green.main.math matches 1 run function light_green:area_level/dark
execute positioned ~ ~ ~ as @a[distance=..50] run function light_green:area_level/2
execute positioned ~ ~ ~ as @a[tag=light_green.adventure] run function light_green:area_level/3
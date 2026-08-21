execute as @e[type=#arrows,tag=!mini_light.token] run function mini_light:monster/machine_gun/shot

execute as @e[tag=mini_light.machine_gun] at @s run function mini_light:monster/machine_gun/sub_shot

execute as @e[type=marker, tag=mini_light.decoration, predicate=!mini_light:monster/vehicle] run kill @s
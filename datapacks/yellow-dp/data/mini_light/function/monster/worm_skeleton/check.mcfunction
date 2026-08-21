advancement revoke @s only mini_light:monster/worm_skeleton

execute as @e[tag=mini_light.worm_skeleton,tag=mini_light.worm2,tag=!mini_light.worm1] if predicate mini_light:monster/hurttime at @s run function mini_light:monster/worm_skeleton/worm2
execute as @e[tag=mini_light.worm_skeleton,tag=mini_light.worm1] if predicate mini_light:monster/hurttime at @s run function mini_light:monster/worm_skeleton/worm1



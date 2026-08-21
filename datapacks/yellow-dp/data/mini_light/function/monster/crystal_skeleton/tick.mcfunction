execute as @e[nbt={weapon:{components:{"minecraft:custom_data":{crystal_bow:1b}}}},type=arrow] unless predicate mini_light:monster/inground at @s run function mini_light:monster/crystal_skeleton/as_arrow

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{crystal_skeleton_die:1b}}}}] at @s run function mini_light:monster/crystal_skeleton/die


execute as @e[tag=mini_light.crystal_skeleton_ghost] at @s run function mini_light:monster/crystal_skeleton/as_ghost
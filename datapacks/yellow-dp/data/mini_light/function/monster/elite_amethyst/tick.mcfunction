execute as @e[tag=mini_light.amethyst_envoy1] at @s run function mini_light:monster/elite_amethyst/as

#tp

execute as @e[tag=mini_light.amethyst_envoy2] at @s run rotate @s ~-10 ~
execute as @e[tag=mini_light.amethyst_envoy3] at @s run rotate @s ~25 ~

#die
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{amethyst_envoy_die:1b}}}}] at @s run function mini_light:monster/elite_amethyst/die

execute as @e[type=item_display, tag=mini_light.decoration, predicate=!mini_light:monster/vehicle] run kill @s
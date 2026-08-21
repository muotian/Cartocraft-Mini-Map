execute store success score $invisibility light_green.main.math run data get entity @s active_effects[{id:"minecraft:invisibility"}]
execute if score $invisibility light_green.main.math matches 1 run return fail
effect give @s glowing 1 0 true
execute if entity @s[tag=!brown_wool.cangting_general] run effect give @s resistance 1 5 true
execute if entity @s[tag=!brown_wool.cangting_general] as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse ,limit=1] run effect give @s resistance 1 5 true
execute if entity @s[tag=!brown_wool.cangting_general] run rotate @s facing ~ ~ ~-1
execute if entity @s[tag=brown_wool.cangting_general] at @s run function brown_wool:entity/boss/cangting_general/as_monster



data modify entity @s NoAI set value true

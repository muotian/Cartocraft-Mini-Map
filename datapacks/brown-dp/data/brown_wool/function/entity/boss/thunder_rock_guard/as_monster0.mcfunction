execute if entity @s[tag=!brown_wool.thunder_rock_guard] run effect give @s resistance 1 5 true


execute if entity @s[tag=brown_wool.thunder_rock_guard] at @s run function brown_wool:entity/boss/thunder_rock_guard/as_monster


data modify entity @s NoAI set value true



execute if entity @s[tag=!brown_wool.thunderous_fiend_rift_fang_1,tag=!brown_wool.thunderous_fiend_rift_fang_2] run effect give @s resistance 1 5 true


execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_1] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/as_monster
execute if entity @s[tag=brown_wool.thunderous_fiend_rift_fang_2] at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/as_monster


data modify entity @s NoAI set value true



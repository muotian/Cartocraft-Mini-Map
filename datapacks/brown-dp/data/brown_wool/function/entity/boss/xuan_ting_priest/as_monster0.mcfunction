execute if entity @s[tag=!brown_wool.xuan_ting_priest] run effect give @s resistance 1 5 true

execute if entity @s[tag=brown_wool.xuan_ting_priest] at @s run function brown_wool:entity/boss/xuan_ting_priest/as_monster

data modify entity @s NoAI set value true

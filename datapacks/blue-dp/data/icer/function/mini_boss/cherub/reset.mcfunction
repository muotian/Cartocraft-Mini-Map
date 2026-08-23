tag @e remove icer.end_pyro
tag @e remove icer.executing_pyro
scoreboard players reset @e icer.pyro_story
execute as @e[tag=icer.summon_cherub] at @s run setblock ~ ~ ~ magma_block
kill @e[tag=icer.cherub]
kill @e[tag=icer.pyrosword]
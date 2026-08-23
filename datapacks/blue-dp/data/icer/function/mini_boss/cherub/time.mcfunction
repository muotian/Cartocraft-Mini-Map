scoreboard players add @s icer.pyro_story 1
execute if score @s icer.pyro_story matches 0.. run setblock ~ ~ ~ magma_block
execute if score @s icer.pyro_story matches 20.. run setblock ~ ~ ~1 magma_block
execute if score @s icer.pyro_story matches 40.. run setblock ~ ~ ~-1 magma_block
execute if score @s icer.pyro_story matches 60.. run setblock ~1 ~ ~ magma_block
execute if score @s icer.pyro_story matches 80.. run setblock ~-1 ~ ~ magma_block
execute if score @s icer.pyro_story matches 100.. run setblock ~ ~1 ~ magma_block

execute if score @s icer.pyro_story matches 20 run playsound block.anvil.place ambient @a ~ ~ ~
execute if score @s icer.pyro_story matches 40 run playsound block.anvil.land ambient @a ~ ~ ~
execute if score @s icer.pyro_story matches 60 run playsound block.anvil.place ambient @a ~ ~ ~
execute if score @s icer.pyro_story matches 80 run playsound block.anvil.land ambient @a ~ ~ ~
execute if score @s icer.pyro_story matches 100 run playsound block.anvil.place ambient @a ~ ~ ~

execute if score @s icer.pyro_story matches 160 run function icer:mini_boss/cherub/end
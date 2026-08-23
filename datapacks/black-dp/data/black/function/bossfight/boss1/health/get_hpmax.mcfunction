
execute store result score #hp icebird.core run data get entity @s Health 100
#execute store result score #hp2 icebird.core run data get entity @s AbsorptionAmount 100

scoreboard players operation @s black.boss_hpmax = #hp icebird.core
#scoreboard players operation @s black.boss_hpmax += #hp2 icebird.core


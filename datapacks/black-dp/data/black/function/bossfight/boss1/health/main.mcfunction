
execute unless score @s black.boss_hpmax matches -2147483648..2147483647 run function black:bossfight/boss1/health/get_hpmax

execute store result score #hp icebird.core run data get entity @s Health 100
#execute store result score #hp2 icebird.core run data get entity @s AbsorptionAmount 100
#scoreboard players operation #hp icebird.core += #hp2 icebird.core

execute unless score @s black.boss_hpmax = #hp icebird.core run function black:bossfight/boss1/health/use
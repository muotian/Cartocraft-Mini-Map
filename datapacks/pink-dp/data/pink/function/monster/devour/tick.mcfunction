#
effect give @s resistance infinite 0 true

#
scoreboard players remove @s[scores={pink.monster.devour.skill=1..}] pink.monster.devour.skill 1

#
execute unless score @s pink.monster.devour.skill matches 1.. at @s if entity @p[distance=..12] anchored eyes run function pink:monster/devour/devour


 
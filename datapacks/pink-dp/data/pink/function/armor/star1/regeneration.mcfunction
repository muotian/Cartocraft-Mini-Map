#
execute if predicate pink:probability/50 run return fail

effect give @s regeneration 1 3 false
scoreboard players set @s pink.armor.star.regeneration_stop 4

playsound minecraft:entity.witch.drink player @s ~ ~ ~ 0.4 1
particle minecraft:heart ~ ~1 ~ .4 .4 .4 0.2 1

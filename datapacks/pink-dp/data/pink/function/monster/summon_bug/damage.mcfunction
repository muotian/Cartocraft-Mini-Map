#
damage @s 8 explosion

effect give @s wither 5 0 false
effect give @s darkness 5 0 false
effect give @s slowness 5 1 false

scoreboard players remove @s pink.mana_u 2
execute if score @s pink.mana_u matches ..0 run scoreboard players set @s pink.mana_u 0

scoreboard players remove @s pink.mana_v 1
execute if score @s pink.mana_v matches ..0 run scoreboard players set @s pink.mana_v 0

playsound minecraft:entity.elder_guardian.curse player @s ~ ~ ~ 0.7 0.8
playsound minecraft:entity.wither.ambient player @a ~ ~ ~ 0.5 0.5

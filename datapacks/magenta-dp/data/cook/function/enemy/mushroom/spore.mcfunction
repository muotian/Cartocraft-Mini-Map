#

particle spore_blossom_air ~ ~0.5 ~ 0.3 0.8 0.3 0.005 3 force @a
particle item{item:{id:"red_mushroom"}} ~ ~1 ~ 0.4 0.8 0.4 0.01 2 force @a

scoreboard players remove @s MagentaSkill 1

execute if score @s MagentaSkill matches 1 run tag @s remove MagentaMushroomSkill

#

execute as @e[tag=MagentaPumpkin,type=zombie] unless score @s MagentaTimer matches 0.. run scoreboard players set @s MagentaTimer 120
scoreboard players add @e[tag=MagentaPumpkin,type=zombie] MagentaTimer 1
scoreboard players remove @e[tag=MagentaPumpkin,type=zombie,scores={MagentaSkill=1..}] MagentaSkill 1

execute as @e[tag=MagentaPumpkin,type=zombie,scores={MagentaTimer=240..}] at @s run function cook:enemy/pumpkin/skill

execute as @e[tag=MagentaPumpkin,type=zombie,scores={MagentaSkill=1..}] at @s run particle ash ~ ~ ~ 0.2 0.2 0.2 0 3 force @a

execute as @e[tag=MagentaPumpkin,type=zombie,scores={MagentaSkill=20}] run data modify entity @s NoAI set value 1b
execute as @e[tag=MagentaPumpkin,type=zombie,scores={MagentaSkill=20}] at @s run function cook:enemy/pumpkin/show
execute as @e[tag=MagentaPumpkin,type=zombie,scores={MagentaSkill=1}] run data modify entity @s NoAI set value 0b

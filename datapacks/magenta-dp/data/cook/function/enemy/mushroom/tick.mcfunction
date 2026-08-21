#

execute as @e[tag=MagentaMushroom,type=husk] unless score @s MagentaTimer matches 0.. run scoreboard players set @s MagentaTimer 180
scoreboard players add @e[tag=MagentaMushroom,type=husk] MagentaTimer 1

execute as @e[tag=MagentaMushroom,type=husk,scores={MagentaTimer=280..}] run function cook:enemy/mushroom/skill

execute as @e[tag=MagentaMushroom,type=husk,scores={MagentaSkill=1..}] at @s run function cook:enemy/mushroom/spore

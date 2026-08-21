#

effect give @s poison 6 0 false
effect give @s slowness 6 0 false

execute as @e[tag=MagentaMushroom,type=husk,scores={MagentaSkill=1..},limit=1,sort=nearest] at @s run function cook:enemy/mushroom/summon

advancement revoke @s only cook:player_attack

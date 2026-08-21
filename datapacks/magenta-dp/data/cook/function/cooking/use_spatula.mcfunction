#

advancement revoke @s only cook:use_spatula

execute if score @s MagentaSpatulaCD matches 1.. run return 0

scoreboard players set @s MagentaSpatulaCD 10

execute at @s run execute as @e[type=item,distance=..10] if items entity @s container.0 campfire at @s if block ~ ~-0.1 ~ copper_block align xyz positioned ~ ~-1 ~ run function cook:pot


# execute if entity @e[type=block_display,tag=CookingPot,distance=..2] run scoreboard players add @e[type=block_display,tag=CookingPot,distance=..2,limit=1,sort=nearest] MagentaCooking 1

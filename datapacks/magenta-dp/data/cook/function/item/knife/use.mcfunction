#

execute as @s unless score @s MagentaKnifeCD matches 1.. at @s run function cook:item/knife/skill

advancement revoke @s only cook:use_knife

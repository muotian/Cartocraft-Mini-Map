#

advancement revoke @s only cook:player_hurt

execute if score @s MagentaMithrilStew matches 1.. at @s run function cook:item/mithril_stew/spray

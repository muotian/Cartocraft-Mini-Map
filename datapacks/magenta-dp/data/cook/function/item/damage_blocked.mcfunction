#

advancement revoke @s only cook:damage_blocked

execute unless score @s MagentaBaguetteCD matches 1.. if items entity @s weapon.mainhand *[custom_data={baguette:1b}] at @s run function cook:item/baguette_strike
execute unless score @s MagentaBaguetteCD matches 1.. if items entity @s weapon.offhand *[custom_data={baguette:1b}] at @s run function cook:item/baguette_strike


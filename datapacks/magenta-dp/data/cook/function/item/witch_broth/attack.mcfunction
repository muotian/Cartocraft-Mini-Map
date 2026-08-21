#

tag @s add MagentaWitherAttacker

execute as @e[distance=..10,type=!player] if function cook:item/witch_broth/check_wither run effect give @s wither 5 0 false

tag @s remove MagentaWitherAttacker

advancement revoke @s only cook:wither_touch

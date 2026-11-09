#> assist:gateway/player/button_rc.check

execute store result score $timestamp assist.gateway run data get entity @s interaction.timestamp

execute unless score $timestamp assist.gateway = $gametime assist.gateway run return fail
execute on target unless entity @s[tag=assist.gateway.pressor] run return fail
return 1

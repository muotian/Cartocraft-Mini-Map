#> assist:gateway/player/tp

data modify storage assist:gateway args set value {dx:0,dz:0,dz:0}

execute store result storage assist:gateway args.dx int 1 run scoreboard players get @s assist.gateway.dx
execute store result storage assist:gateway args.dy int 1 run scoreboard players get @s assist.gateway.dy
execute store result storage assist:gateway args.dz int 1 run scoreboard players get @s assist.gateway.dz

particle minecraft:portal ~ ~1 ~ 0 0 0 1 50

function assist:gateway/player/tp.marco with storage assist:gateway args

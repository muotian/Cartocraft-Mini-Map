#> assist:gateway/player/tp

data modify storage assist:gateway args set value {dx:0,dz:0,dz:0}

execute store result storage assist:gateway args.dx int 1 run scoreboard players get @s assist.gateway.dx
execute store result storage assist:gateway args.dy int 1 run scoreboard players get @s assist.gateway.dy
execute store result storage assist:gateway args.dz int 1 run scoreboard players get @s assist.gateway.dz

scoreboard players operation $this assist.gateway.id = @s assist.gateway.id
execute as @e[type=minecraft:interaction,distance=0..50,tag=assist.gateway.core] if score @s assist.gateway.id = $this assist.gateway.id at @s run data merge block ~ ~ ~ {Age:2399L}

particle minecraft:portal ~ ~1 ~ 0 0 0 1 50
playsound minecraft:entity.player.teleport player @a ~ ~ ~ 1 1

function assist:gateway/player/tp.marco with storage assist:gateway args

execute at @s run particle minecraft:portal ~ ~1 ~ 0 0 0 1 50
execute at @s run playsound minecraft:entity.player.teleport player @a ~ ~ ~ 1 1
execute at @s if function assist:gateway/player/dest_check run scoreboard players reset @s assist.gateway.dest_id
scoreboard players reset @s assist.gateway.id

execute as @s[scores={assist.gateway.dest_id=0..}] run schedule function assist:gateway/dest_check 1t

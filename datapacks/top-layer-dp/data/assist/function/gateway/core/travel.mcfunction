#> assist:gateway/core/travel

execute unless score @s assist.gateway.dest_id matches 0.. run return 0
execute if score @s assist.gateway.dest_id = @s assist.gateway.id run return 0

data modify storage assist:gateway args set from entity @s data

execute store result score $x assist.gateway run data get storage assist:gateway args.dep[0]
execute store result score $y assist.gateway run data get storage assist:gateway args.dep[1]
execute store result score $z assist.gateway run data get storage assist:gateway args.dep[2]

execute store result score $dx assist.gateway run data get storage assist:gateway args.dest[0]
execute store result score $dy assist.gateway run data get storage assist:gateway args.dest[1]
execute store result score $dz assist.gateway run data get storage assist:gateway args.dest[2]

scoreboard players operation $dx assist.gateway -= $x assist.gateway
scoreboard players operation $dy assist.gateway -= $y assist.gateway
scoreboard players operation $dz assist.gateway -= $z assist.gateway

scoreboard players operation $this assist.gateway.id = @s assist.gateway.id
scoreboard players operation $this assist.gateway.dest_id = @s assist.gateway.dest_id
execute as @a[tag=assist.gateway.pressor] run function assist:gateway/player/tp_ready

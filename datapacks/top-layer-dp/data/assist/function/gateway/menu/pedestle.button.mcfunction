#> assist:gateway/menu/pedestle.button

data modify storage assist:gateway args set from entity @s data
execute store result score $index assist.gateway.id run data get storage assist:gateway args.index

execute if score $this assist.gateway.id = $index assist.gateway.id run function assist:gateway/menu/pedestle.button.this with storage assist:gateway args
execute unless score $this assist.gateway.id = $index assist.gateway.id run function assist:gateway/menu/pedestle.button.other with storage assist:gateway args

scoreboard players operation @e[distance=0..0.5,tag=assist.gateway.new] assist.gateway.id = $this assist.gateway.id
tag @e[distance=0..1,tag=assist.gateway.new] remove assist.gateway.new

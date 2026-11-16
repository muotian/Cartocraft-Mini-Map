#> assist:gateway/core/first_return

scoreboard players set $first_return assist.gateway 1

scoreboard players operation $this assist.gateway.id = @s assist.gateway.id
data modify storage assist:gateway args set value {index:0,color:""}
execute store result storage assist:gateway args.index int 1 run scoreboard players get $dep assist.gateway.id
function assist:gateway/core/first_return.macro with storage assist:gateway args
function assist:gateway/core/download with storage assist:gateway args

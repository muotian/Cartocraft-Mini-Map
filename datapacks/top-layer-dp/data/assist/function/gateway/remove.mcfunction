#> assist:gateway/remove

$execute unless data storage assist:gateway colors[{color:"$(color)"}] run return run tellraw @a {text:"[Gateway] Not a color: \"$(color)\".",color:"red"}

$execute store result score $remove assist.gateway.id run data get storage assist:gateway colors[{color:"$(color)"}].index

$execute as @e[tag=assist.gateway.core] if data entity @s data{color:"$(color)"} at @s run function assist:gateway/remove.core
$data remove storage assist:gateway init[{color:"$(color)"}]
$data remove storage assist:gateway data[{color:"$(color)"}]

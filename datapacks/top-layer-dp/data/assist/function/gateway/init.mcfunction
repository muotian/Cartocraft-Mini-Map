#> assist:gateway/init

$data modify storage assist:gateway args set value {color:"$(color)"}

$execute unless data storage assist:gateway colors[{color:"$(color)"}] run return run tellraw @a {text:"[Gateway] Not a color: \"$(color)\".",color:"red"}
$execute if data storage assist:gateway init[{color:"$(color)"}] run return run tellraw @a {text:"[Gateway] Gateway of \"$(color)\" already exists.",color:"red"}
execute unless entity @s[type=minecraft:interaction,tag=assist.gateway.core] unless entity @n[distance=0..50,type=minecraft:interaction,tag=assist.gateway.core,tag=!assist.gateway.init] run return run tellraw @a {text:"[Gateway] No uninitialized gateway core nearby.",color:"red"}
execute unless entity @s[type=minecraft:interaction,tag=assist.gateway.core] as @n[distance=0..50,type=minecraft:interaction,tag=assist.gateway.core,tag=!assist.gateway.init] at @s run return run function assist:gateway/init with storage assist:gateway args

$execute store result score $init assist.gateway.id run data get storage assist:gateway colors[{color:"$(color)"}].index
execute store result entity @s data.id int 1 run scoreboard players get $init assist.gateway.id
data modify entity @s data.color set from storage assist:gateway args.color
scoreboard players operation @s assist.gateway.id = $init assist.gateway.id

execute align xyz positioned ~0.5 ~0.5 ~0.5 summon minecraft:block_display run function assist:gateway/init.display with storage assist:gateway args

data modify storage assist:gateway init append from storage assist:gateway args
tag @s add assist.gateway.init
tag @s add assist.gateway.button

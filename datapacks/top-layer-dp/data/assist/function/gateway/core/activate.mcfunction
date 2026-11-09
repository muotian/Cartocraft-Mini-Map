#> assist:gateway/core/activate

data modify storage assist:gateway args set from entity @s data
execute store result score $this assist.gateway.id run data get storage assist:gateway args.id
scoreboard players operation @s assist.gateway.id = $this assist.gateway.id
execute as @e[distance=0..50,tag=assist.gateway] run function assist:gateway/core/reconnect with storage assist:gateway args

setblock ~ ~ ~ minecraft:end_gateway
data modify storage assist:gateway temp set value {block:{},pos:[I;]}
data modify storage assist:gateway temp.block merge from block ~ ~ ~
data modify storage assist:gateway temp.pos append from storage assist:gateway temp.block.x
data modify storage assist:gateway temp.pos append from storage assist:gateway temp.block.y
data modify storage assist:gateway temp.pos append from storage assist:gateway temp.block.z
function assist:gateway/core/upload with storage assist:gateway args

scoreboard players set @s assist.gateway.active 1
data modify entity @s data.dep set from storage assist:gateway temp.pos
data modify entity @s data.dest set from storage assist:gateway data[{id:0}].pos
data modify block ~ ~ ~ exit_portal set from storage assist:gateway data[{id:0}].pos

function assist:gateway/label/layout

playsound minecraft:block.beacon.activate block @a ~ ~0.5 ~ 1 1

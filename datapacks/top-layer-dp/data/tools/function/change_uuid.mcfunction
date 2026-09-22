execute as @s[type=minecraft:player] run return fail

data modify storage tools:change_uuid macro set value {type:"",data:{}}
data modify storage tools:change_uuid macro.data set from entity @s
$data modify storage tools:change_uuid macro.data.UUID set value uuid($(uuid))

execute at @s run summon minecraft:interaction ~ ~ ~ {UUID:uuid(ccf-0-0-0-0),width:0f,height:0f}
ride @s mount ccf-0-0-0-0
data modify storage tools:change_uuid macro.type set from entity ccf-0-0-0-0 Passengers[0].id

function tools:change_uuid.macro with storage tools:change_uuid macro

kill ccf-0-0-0-0
kill @s

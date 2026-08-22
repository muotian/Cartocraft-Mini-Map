tag @s remove gray.beacon.interaction.unignited
playsound minecraft:item.firecharge.use block @a ~ ~ ~ 1 1
summon minecraft:block_display ~ ~ ~ {block_state: {Name: "minecraft:fire", Properties: {age: "15", east: "false", north: "false", south: "false", up: "false", west: "false"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.25f, 3.25f, 3.25f], translation: [-1.625f, -0.15f, -1.625f]},brightness:{sky:15,block:15}}
execute unless score $beacon_amount gray.map_event matches 4.. run scoreboard players add $beacon_amount gray.map_event 1
execute if score $beacon_amount gray.map_event matches 4.. run scoreboard players set $state gray.map_event 3
kill @e[type=marker,tag=gray.guide.3_2,limit=1,distance=..5]
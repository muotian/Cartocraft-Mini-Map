summon splash_potion ~ ~ ~ {Tags:["wool_purple.ice_danny"]}
summon block_display ~-0.5 ~-0.5 ~-0.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:packed_ice",Properties:{}},transformation:[-0.5303f,-0.0000f,0.5303f,0.0000f,0.3750f,0.5303f,0.3750f,-0.4375f,-0.3750f,0.5303f,-0.3750f,0.0625f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:[wool_purple.ice_in],teleport_duration:1b}],Tags:[wool_purple.ice_less]}
ride @n[tag=wool_purple.ice_less] mount @n[tag=wool_purple.ice_danny]
execute as @e[tag=wool_purple.ice_danny] facing entity @n[tag=wool_purple.target] feet positioned 0.0 0.0 0.0 as a11-1-1-1-1 run tp @s ^ ^0.2 ^1
execute as @e[tag=wool_purple.ice_danny] run data modify entity @s Motion set from entity a11-1-1-1-1 Pos
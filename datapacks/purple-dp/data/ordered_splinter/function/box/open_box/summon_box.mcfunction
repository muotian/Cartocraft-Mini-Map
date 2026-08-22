execute align xz run summon marker ~0.5 ~ ~0.5 {Tags:["wool_purple.box"]}

execute as @s store result score @s wool_purple.yaw run data get entity @s Rotation[0] 1
execute if score @s wool_purple.yaw matches -45..45 run data merge entity @n[type=minecraft:marker,tag=wool_purple.box] {Rotation:[0f,0f]}
execute if score @s wool_purple.yaw matches 45..135 run data merge entity @n[type=minecraft:marker,tag=wool_purple.box] {Rotation:[90f,0f]}
execute if score @s wool_purple.yaw matches -135..-45 run data merge entity @n[type=minecraft:marker,tag=wool_purple.box] {Rotation:[-90f,0f]}
execute if score @s wool_purple.yaw matches 136..180 run data merge entity @n[type=minecraft:marker,tag=wool_purple.box] {Rotation:[180f,0f]}
execute if score @s wool_purple.yaw matches -180..-136 run data merge entity @n[type=minecraft:marker,tag=wool_purple.box] {Rotation:[180f,0f]}

execute at @n[type=minecraft:marker,tag=wool_purple.box] run function animated_java:box/summon {args:{}}
execute align xz run summon minecraft:interaction ~0.5 ~ ~0.5 {Tags:["wool_purple.open_box","wool_purple.box_interaction"],width:1.1,height:1.1,response:true}
summon shulker ~ ~ ~ {NoAI:1b,active_effects:[{id:invisibility,duration:-1,show_particles:false}],Tags:[wool_purple.box_shulker],Invulnerable:1b}
playsound block.amethyst_block.place player @s ~ ~ ~ 1 1
kill @n[type=marker,tag=wool_purple.box]
execute as @e[tag=aj.box.root] on passengers run team join wool_purple.blue
execute as @e[tag=aj.box.root] run tag @s add wool_purple.aj_box
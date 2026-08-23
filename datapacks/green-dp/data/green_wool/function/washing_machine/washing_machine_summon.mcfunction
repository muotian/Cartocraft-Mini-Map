summon ravager ~ ~1 ~ {DeathLootTable:"minecraft:empty",Tags:["green_wool.device","green_wool.washing_machine","green_wool.washing_machine_new"],Silent:1b,PersistenceRequired:1b,attributes:[{id:"minecraft:max_health",base:280f},{id:"minecraft:max_absorption",base:2048},{id:"scale",base:0.5d}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:1000000000,show_particles:0b,show_icon:0b}]}
execute at @n[tag=green_wool.washing_machine_new] run function animated_java:washing_machice/summon {args: {animation: 'move', start_animation: true}} 
execute at @n[tag=green_wool.washing_machine_new] run tag @e[tag=aj.washing_machice.entity,distance=..0.1] add green_wool.washing_machine-AJ_new
tag @e[tag=green_wool.washing_machine-AJ_new] add green_wool.washing_machine-AJ
scoreboard players add index green_wool.washing_machine-AJ 1
scoreboard players operation @e[tag=green_wool.washing_machine-AJ_new] green_wool.washing_machine-AJ = index green_wool.washing_machine-AJ
scoreboard players operation @n[tag=green_wool.washing_machine_new] green_wool.washing_machine-AJ = index green_wool.washing_machine-AJ

tag @n[tag=green_wool.washing_machine_new] remove green_wool.washing_machine_new
tag @e[tag=green_wool.washing_machine-AJ_new] remove green_wool.washing_machine-AJ_new
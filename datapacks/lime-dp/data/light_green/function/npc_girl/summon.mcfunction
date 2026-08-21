function light_green:npc_girl/kill
execute at @n[tag=light_green.summon.graud_golem] positioned ~-6 ~55 ~-6 align xyz positioned ~.5 ~ ~.5 run summon villager ~ ~ ~ {Tags:["light_green","light_green.mob","light_green.npc","light_green.piglin_girl_npc","light_green.new.mob"],Invulnerable:true,attributes:[{id:"scale",base:1.25}],active_effects:[{id:"invisibility",amplifier:0,duration:-1,show_particles:false}],NoAI:TRUE,Silent:true,Rotation:[180,0]}
execute at @n[tag=light_green.summon.graud_golem] positioned ~-6 ~55 ~-6 align xyz positioned ~.5 ~ ~.5 run summon interaction ~ ~ ~ {Tags:["light_green.piglin_girl_npc.interaction"],height:-2.5}
execute at @n[tag=light_green.summon.graud_golem] positioned ~-5 ~55 ~-2 align xyz positioned ~.5 ~ ~.5 run summon interaction ~ ~ ~ {Tags:["light_green.chair.interaction"]}
execute at @n[tag=light_green.summon.graud_golem] positioned ~-5 ~55 ~-2 align xyz positioned ~.5 ~.5 ~.5 run summon minecraft:block_display ~ ~ ~ {Tags:["light_green.chair.block"],block_state:{Name:oak_stairs},transformation:{left_rotation:[0,1,0,0],right_rotation:[0,0,0,1],scale:[0.9,0.9,0.9,],translation:[0.45,-0.475,0.475]}}
ride @n[tag=light_green.piglin_girl_npc.interaction] mount @n[tag=light_green.new.mob]
execute rotated 0 0 run function animated_java:piglin_girl_npc/summon {args:{}}
execute rotated 0 0 run function animated_java:piglin_girl_npc_head/summon {args:{}}
ride @n[tag=aj.piglin_girl_npc_head.root] mount @n[tag=aj.piglin_girl_npc.locator.head_cheak]
execute as @n[tag=aj.piglin_girl_npc.root,type=item_display] run function animated_java:piglin_girl_npc/animations/cafe_make/play
execute as @n[tag=aj.piglin_girl_npc_head.root,type=item_display] run function animated_java:piglin_girl_npc_head/animations/nothing/play
execute as @n[tag=light_green.new.mob] run function light_green:npc_girl/set
tag @n[tag=light_green.new.mob] remove light_green.new.mob
scoreboard players add $npc_id light_green.main.math 1
summon piglin ~ ~ ~ {Tags:["light_green.arena_npc.piglin","light_green.npc","light_green.new.mob","light_green.mob","light_green"],Invulnerable:true,NoAI:true,PersistenceRequired:true}
scoreboard players operation @n[tag=light_green.new.mob] light_green.npc_id = $npc_id light_green.main.math
tag @n[tag=light_green.new.mob] remove light_green.new.mob
summon interaction ~ ~-0.25 ~ {Tags:["light_green.arena_npc.interaction","light_green.new.mob","light_green.mob","light_green"],height:2.5}
scoreboard players operation @n[tag=light_green.new.mob] light_green.npc_id = $npc_id light_green.main.math
tag @n[tag=light_green.new.mob] remove light_green.new.mob
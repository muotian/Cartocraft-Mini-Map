scoreboard players add $trader_id light_green.main.math 1
summon piglin ~ ~-0.5 ~ {Tags:["light_green.piglin_trader.piglin","light_green.npc","light_green.new.mob","light_green","light_green.mob"],Invulnerable:true,NoAI:true,PersistenceRequired:true}
scoreboard players operation @n[tag=light_green.new.mob] light_green.trader_id = $trader_id light_green.main.math
tag @n[tag=light_green.new.mob] remove light_green.new.mob
summon villager ~ ~-1 ~ {Tags:["light_green.piglin_trader.villager","light_green.new.mob"],Invulnerable:true,NoAI:true,active_effects:[{id:"invisibility",show_particles:false,duration:-1}],attributes:[{id:"scale",base:1.5}],Offers:{Recipes:[]},Silent:true,CustomName:{"translate":"entity.minecraft.piglin",italic:false},PersistenceRequired:true}
scoreboard players operation @n[tag=light_green.new.mob] light_green.trader_id = $trader_id light_green.main.math
execute as @n[tag=light_green.new.mob] run function light_green:piglin_trader/generate/trade/buya {trade:0}
tag @n[tag=light_green.new.mob] remove light_green.new.mob

setblock ~ ~ ~ air
kill @s
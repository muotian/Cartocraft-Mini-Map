summon piglin ~ ~ ~ {IsImmuneToZombification:true,Tags:["light_green","light_green.piglin_archer","light_green.mob","light_green.new_mob.archer"],drop_chances:{mainhand:0,offhand:0},equipment:{mainhand:{id:crossbow}},attributes:[{id:max_health,base:10},{id:"follow_range",base:30}],CustomName:{translate:"light_green:piglin_archer"}}
summon strider ~ ~ ~ {Tags:[light_green.new.mob],attributes:[{id:scale,base:0.75},{id:"movement_speed",base:0.3}],DeathLootTable:""}
scoreboard players set @n[tag=light_green.new_mob.archer] light_green.team 1
scoreboard players set @n[tag=light_green.new.mob] light_green.team 1
ride @n[tag=light_green.new_mob.archer] mount @n[tag=light_green.new.mob]
tag @n[tag=light_green.new.mob] remove light_green.new.mob
effect give @n[tag=light_green.new_mob.archer] fire_resistance infinite 0 true
tag @n[tag=light_green.new_mob.archer] remove light_green.new_mob.archer
summon piglin ~ ~ ~ {IsImmuneToZombification:true,Tags:["light_green","light_green.piglin_archer","light_green.mob","light_green.new_mob.archer"],drop_chances:{mainhand:0,offhand:0},equipment:{mainhand:{id:crossbow}},attributes:[{id:max_health,base:10},{id:"follow_range",base:30}],CustomName:{translate:"light_green:piglin_archer"}}
scoreboard players set @n[tag=light_green.new_mob.archer] light_green.team 1
team join light_green.piglin @n[tag=light_green.new_mob.archer]
tag @n[tag=light_green.new_mob.archer] remove light_green.new_mob.archer

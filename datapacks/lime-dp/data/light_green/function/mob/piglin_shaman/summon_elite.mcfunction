summon piglin ~ ~ ~ {Health:20,IsImmuneToZombification:true,Tags:["light_green","light_green.piglin_shaman","light_green.mob","light_green.new_mob"],\
drop_chances:{mainhand:0,offhand:0,chest:0,head:0},\
equipment:\
{mainhand:{id:crossbow,components:{enchantments:{"light_green:defence":1},item_model:air}},\
head:{id:golden_helmet,components:{equippable:{slot:head},item_model:"light_green:shaman_mask"}},\
chest:{id:leather_chestplate,components:{equippable:{slot:chest,asset_id:"light_green:black_stone"},trim:{material:amethyst,pattern:host}}},\
feet:{id:leather_boots,components:{equippable:{slot:feet,asset_id:"light_green:black_stone"},trim:{material:amethyst,pattern:host}}}\
},attributes:[{id:max_health,base:20}]\
,DeathLootTable:"light_green:piglin",CustomName:{translate:"light_green:piglin_shaman_elite"}}

execute store result score @n[tag=light_green.new_mob] light_green.shaman_id run scoreboard players set $shaman_id light_green.main.math 1
scoreboard players set @n[tag=light_green.new_mob] light_green.team 1
team join light_green.piglin @n[tag=light_green.new_mob]
tag @n[tag=light_green.new_mob] remove light_green.new_mob
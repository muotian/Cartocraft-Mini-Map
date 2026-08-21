summon piglin ~ ~ ~ {Health:30,IsImmuneToZombification:true,Tags:["light_green","light_green.piglin_guard","light_green.mob","light_green.new_mob","light_green.melee"],\
drop_chances:{mainhand:0,head:0,chest:0},\
equipment:\
{mainhand:{id:golden_sword,components:{"item_model":"golden_sword","attribute_modifiers":[{id:"light_green:piglin.sword",slot:hand,type:attack_damage,amount:0,operation:"add_value"}]}},\
head:{id:golden_helmet,components:{equippable:{slot:head},item_model:"light_green:teeth_helmet"}},\
chest:{id:golden_chestplate,components:{enchantments:{"light_green:hurt_projectile":1},attribute_modifiers:[{slot:chest,type:armor,id:armor.chestplate,amount:9,operation:"add_value"}]}}\
},attributes:[{id:max_health,base:30}]\
,DeathLootTable:"light_green:piglin",CustomName:{translate:"light_green:piglin_guard"}}

scoreboard players set @n[tag=light_green.new_mob] light_green.team 1
team join light_green.piglin @n[tag=light_green.new_mob]
tag @n[tag=light_green.new_mob] remove light_green.new_mob
#

give @s spawner[\
custom_name={translate:"magenta.entity.pumpkin.name",italic:false}, \
block_entity_data={id:"mob_spawner", \
Delay:0s, \
MaxNearbyEntities: 8s, \
MaxSpawnDelay:1200, \
MinSpawnDelay:400, \
RequiredPlayerRange:16s, \
SpawnCount:1s, \
SpawnRange:3s, \
SpawnData:{\
entity:{id:"zombie", CustomName:[{translate:"magenta.entity.pumpkin.name"}], \
attributes:[{id:"max_health",base:12},{id:"attack_damage",base:1},{id:"movement_speed",base:0.2},{id:"scale",base:0.8}], \
Health:12, \
equipment:{head:{id:"jack_o_lantern",count:1},chest:{id:"leather_chestplate",components:{dyed_color:14211288},count:1},mainhand:{id:"iron_axe",components:{attribute_modifiers:[{type:"attack_damage",amount:6,operation:"add_value",id:"magenta_1",slot:"mainhand"},{type:"attack_speed",amount:-2.4,operation:"add_value",id:"magenta_1",slot:"mainhand"}]},count:1}}, \
drop_chances:{head:0,chest:0,mainhand:0}, \
DeathLootTable:"cook:entities/pumpkin", \
Tags:["MagentaPumpkin"],Silent:1b}, \
custom_spawn_rules:{block_light_limit:{min_inclusive:0,max_inclusive:15},sky_light_limit:{min_inclusive:0,max_inclusive:15}}}}]

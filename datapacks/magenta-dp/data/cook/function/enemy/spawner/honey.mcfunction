#

give @s spawner[\
custom_name={translate:"magenta.entity.honey.name",italic:false}, \
block_entity_data={id:"mob_spawner", \
Delay:0s, \
MaxNearbyEntities: 8s, \
MaxSpawnDelay:800, \
MinSpawnDelay:400, \
RequiredPlayerRange:16s, \
SpawnCount:2s, \
SpawnRange:3s, \
SpawnData:{\
entity:{id:"stray", CustomName:[{translate:"magenta.entity.honey.name"}], \
attributes:[{id:"max_health",base:12},{id:"movement_speed",base:0.22}], \
Health:12, \
equipment:{head:{id:"honey_block",count:1},mainhand:{id:"bow",count:1}}, \
drop_chances:{head:0,mainhand:0}, \
DeathLootTable:"cook:entities/honey", \
Tags:["MagentaHoney"]}, \
custom_spawn_rules:{block_light_limit:{min_inclusive:0,max_inclusive:15},sky_light_limit:{min_inclusive:0,max_inclusive:15}}}}]

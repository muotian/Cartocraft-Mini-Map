#

give @s spawner[\
custom_name={translate:"magenta.entity.mushroom.name",italic:false}, \
block_entity_data={id:"mob_spawner", \
Delay:0s, \
MaxNearbyEntities: 8s, \
MaxSpawnDelay:800, \
MinSpawnDelay:400, \
RequiredPlayerRange:16s, \
SpawnCount:2s, \
SpawnRange:3s, \
SpawnData:{\
entity:{id:"husk", CustomName:[{translate:"magenta.entity.mushroom.name"}], \
attributes:[{id:"max_health",base:20},{id:"attack_damage",base:4},{id:"movement_speed",base:0.2}], \
Health:20, \
equipment:{head:{id:"red_mushroom_block",count:1}}, \
drop_chances:{head:0}, \
DeathLootTable:"cook:entities/mushroom", \
Tags:["MagentaMushroom"]},\
custom_spawn_rules:{block_light_limit:{min_inclusive:0,max_inclusive:15},sky_light_limit:{min_inclusive:0,max_inclusive:15}}}}]

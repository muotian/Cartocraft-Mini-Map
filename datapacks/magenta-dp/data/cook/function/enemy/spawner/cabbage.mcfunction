#

give @s spawner[\
custom_name={translate:"magenta.entity.cabbage.name",italic:false}, \
block_entity_data={id:"mob_spawner", \
Delay:0s, \
MaxNearbyEntities: 8s, \
MaxSpawnDelay:800, \
MinSpawnDelay:400, \
RequiredPlayerRange:16s, \
SpawnCount:2s, \
SpawnRange:5s, \
SpawnData:{entity:{id:"magma_cube", CustomName:[{translate:"magenta.entity.cabbage.name"}], \
attributes:[{id:"max_health",base:8},{id:"attack_damage",base:3},{id:"attack_knockback",base:5},{id:"movement_speed",base:0.8}], \
Health:8, \
DeathLootTable:"cook:entities/cabbage", \
Tags:["MagentaCabbage"], \
Passengers:[{id:"item_display",item:{id:"poisonous_potato",components:{item_model:"magenta:cabbage"}},CustomName:[{translate:"magenta.entity.cabbage.name"}],billboard:"vertical",Tags:["MagentaCabbage"]}]}\
}}]

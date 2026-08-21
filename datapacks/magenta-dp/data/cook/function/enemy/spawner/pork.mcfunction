#

give @s spawner[\
custom_name={translate:"magenta.entity.pork.name",italic:false}, \
block_entity_data={id:"mob_spawner", \
Delay:0s, \
MaxNearbyEntities: 8s, \
MaxSpawnDelay:1200, \
MinSpawnDelay:400, \
RequiredPlayerRange:16s, \
SpawnCount:1s, \
SpawnRange:3s, \
SpawnData:{entity:{id:"hoglin", CustomName:[{translate:"magenta.entity.pork.name"}], \
attributes:[{id:"max_health",base:30},{id:"attack_damage",base:6},{id:"movement_speed",base:0.25}], \
Health:30, \
DeathLootTable:"cook:entities/pork", \
IsImmuneToZombification:true, \
Tags:["MagentaPork"], \
}}}]

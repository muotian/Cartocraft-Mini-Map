give @p spawner[\
    block_entity_data={\
        id:"mob_spawner",\
        RequiredPlayerRange:16,\
        SpawnCount:2,\
        SpawnRange:5,\
        MaxNearbyEntities:20,\
        Delay:20,\
        MinSpawnDelay:400,\
        MaxSpawnDelay:600,\
        SpawnData:{\
            entity:{\
                id:"creeper",\
                DeathLootTable:"red_wool:all_mobs",\
                CustomNameVisible:1b,\
                Health:10f,\
                Tags:["red_wool.creeper","red_wool_enemy"],\
                CustomName:{"bold":true,"color":"red","translate":"red_wool.creeper"},\
                attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:movement_speed",base:0.3}, {id:"scale", base:0.8}],\
                ExplosionRadius:0, Fuse:100,\    
                equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantments":{"red_wool:dealt_true_explosion":12}}}},\
                drop_chances:{mainhand:0.00},\
            }\
        }\
    }\
] 1

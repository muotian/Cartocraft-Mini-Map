give @p spawner[\
    block_entity_data={\
        id:"mob_spawner",\
        RequiredPlayerRange:16,\
        SpawnCount:4,\
        SpawnRange:5,\
        MaxNearbyEntities:20,\
        Delay:20,\
        MinSpawnDelay:400,\
        MaxSpawnDelay:600,\
        SpawnData:{\
            entity:{\
                id:"slime",\
                DeathLootTable:"red_wool:all_mobs",CustomNameVisible:1b,Size:10,Health:10f,CustomName:{"bold":true,"color":"red","translate":"red_wool.slime"},\
                Tags:["red_wool.enemy","red_wool.slime"],\
                equipment:{mainhand:{id:"minecraft:iron_sword",count:1,components:{"minecraft:enchantments":{"red_wool:dealt_true_explosion":10}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000},attributes:[{id:"minecraft:attack_damage",base:15},{id:"minecraft:max_health",base:200}]}\
       }\
    }\
] 1

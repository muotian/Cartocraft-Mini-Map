give @p spawner[\
    block_entity_data={\
        id:"mob_spawner",\
        RequiredPlayerRange:16,\
        SpawnCount:3,\
        SpawnRange:5,\
        MaxNearbyEntities:20,\
        Delay:20,\
        MinSpawnDelay:400,\
        MaxSpawnDelay:600,\
        SpawnData:{\
            entity:{\
                id:"skeleton",\
                DeathLootTable:"red_wool:all_mobs",CustomNameVisible:1b,Health:100f,Tags:["red_wool.skeleton","red_wool_enemy"],CustomName:{"bold":true,"color":"red","translate":"red_wool.skeleton"},equipment:{feet:{id:"minecraft:golden_boots",count:1},legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:enchantments":{"protection":3}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{"protection":3}}},head:{id:"minecraft:spyglass",count:1},mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"red_wool:dealt_true_explosion":20}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000},attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:movement_speed",base:0.2}]\
            }\
        }\
    }\
] 1

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
                id:"silverfish",\
                drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000},\
                DeathLootTable:"red_wool:all_mobs",\
                CustomNameVisible:1b,\
                Health:50f,\
                Tags:["red_wool.endermite","red_wool_enemy"],\
                Passengers:[{id:"minecraft:silverfish",DeathLootTable:"red_wool:all_mobs",drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000},Health:50f,Tags:["red_wool.endermite","red_wool_enemy"],Passengers:[{id:"minecraft:silverfish",drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000},DeathLootTable:"red_wool:all_mobs",Health:50f,equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantments":{"red_wool:dealt_true_explosion":12}}}},attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:scale",base:1}]}],equipment:{mainhand:{id:"minecraft:stick",count:1,components:{enchantments:{"red_wool:dealt_true_explosion":8}}}},attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:movement_speed",base:0.35},{id:"minecraft:scale",base:1.5}]}],CustomName:{"bold":true,"color":"red","translate":"red_wool.endermite"},equipment:{mainhand:{id:"minecraft:stick",count:1,components:{enchantments:{"red_wool:dealt_true_explosion":8}}}},drop_chances:{mainhand:0.000},attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:movement_speed",base:0.35},{id:"minecraft:scale",base:2}]\
            }\
        }\
    }\
] 1

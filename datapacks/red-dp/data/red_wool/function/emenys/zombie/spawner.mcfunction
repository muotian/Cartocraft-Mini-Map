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
                id:"zombie",\
                DeathLootTable:"red_wool:all_mobs",CustomNameVisible:1b,Health:50f,CustomName:{"bold":true,"color":"red","translate":"red_wool.zombie"},Tags:["red_wool.enemy","red_wool.zombie"],equipment:{feet:{id:"minecraft:diamond_boots",count:1,components:{"minecraft:enchantments":{"feather_falling":10,"protection":4}}},legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:wild"},"minecraft:enchantments":{"protection":4}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:wild"},"minecraft:enchantments":{"protection":4}}},head:{id:"minecraft:diamond_helmet",count:1,components:{"minecraft:enchantments":{"protection":4}}},mainhand:{id:"minecraft:iron_sword",count:1,components:{"minecraft:enchantments":{"red_wool:dealt_true_explosion":10}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000},attributes:[{id:"minecraft:attack_damage",base:30},{id:"minecraft:max_health",base:200}]\
            }\
       }\
    }\
] 1

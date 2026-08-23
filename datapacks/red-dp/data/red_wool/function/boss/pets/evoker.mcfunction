summon evoker ~ ~ ~ {\
    Tags:["red_wool.evoker","red_wool_enemy", "red_wool.boss.pet"],\
    DeathLootTable:"red_wool:all_mobs",\
    Health:300f, active_effects:[{id:"resistance", amplifier:3, duration:-1}],\
    equipment:{\
        chest:{\
            id:"minecraft:golden_chestplate",\
            count:1,\
            components:{\
                "minecraft:enchantments":{"blast_protection":5,"protection":5}\
            }\
        },\
        mainhand:{\
            id:"minecraft:tnt",\
            count:1,\
            components:{\
                "minecraft:enchantments":{"red_wool:dealt_true_explosion":10}\
            }\
        }\
    },\
    drop_chances:{chest:0.000,mainhand:0.000},\
    attributes:[\
        {id:"minecraft:attack_damage",base:20},\
        {id:"minecraft:max_health",base:300},\
        {id:"minecraft:movement_speed",base:0.3},\
        {id:"minecraft:scale",base:1.2}\
    ],\
}
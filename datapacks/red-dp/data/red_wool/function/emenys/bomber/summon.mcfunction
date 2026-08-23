summon creeper ~ ~ ~ {\
    DeathLootTable:"red_wool:all_mobs",\
    CustomNameVisible:1b,\
    Health:10f,\
    Tags:["red_wool.creeper","red_wool_enemy"],\
    CustomName:{"bold":true,"color":"red","translate":"red_wool.creeper"},\
    attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:movement_speed",base:0.3}, {id:"scale", base:0.8}],\
    ExplosionRadius:0, Fuse:100,\    
    equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:enchantments":{"red_wool:dealt_true_explosion":12}}}},\
    drop_chances:{mainhand:0.00},\
}
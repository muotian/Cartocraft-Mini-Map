#
execute if entity @n[tag=pink.phantom2] run kill @s
execute if entity @n[tag=pink.phantom2] run return fail 

summon phantom ~ ~5 ~ {Health:120,Tags:["pink_mobs","pink.phantom","pink.phantom2"],equipment:{mainhand:{id:diamond_sword,components:{enchantments:{fire_aspect:3,knockback:10}}}},drop_chances:{mainhand:0f},attributes:[{id:max_health,base:120f},{id:scale,base:10f},{id:follow_range,base:150f},{id:armor,base:15}],Team:"pink.monster2",PersistenceRequired:1b,CustomName:{"translate":"monster.pink.phantom.name"},DeathLootTable:""}

kill @s
kill @n[tag=pink.monster.b,type=marker]
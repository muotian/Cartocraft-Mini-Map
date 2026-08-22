#

summon phantom ~ ~ ~ {Health:25,Tags:["pink_mobs","pink.phantom"],equipment:{mainhand:{id:diamond_sword,components:{enchantments:{fire_aspect:1,knockback:2}}}},drop_chances:{mainhand:0f},attributes:[{id:max_health,base:35f},{id:follow_range,base:150f}],Team:"pink.monster2",CustomName:{"translate":"monster.pink.phantom.name"},DeathLootTable:"pink:item_d/white2"}

kill @s
kill @n[tag=pink.monster.b,type=marker]

#
summon evoker ~ ~ ~ {CustomNameVisible:1b,Health:80,Tags:["pink_mobs","pink.gravity"],equipment:{offhand:{id:totem_of_undying,components:{item_model:"air"},count:3}},drop_chances:{offhand:0f},attributes:[{id:max_health,base:50f}],DeathLootTable:"pink:item_d/white3",CustomName:[{"translate":"monster.pink.gravity.name"}]}

kill @s
kill @n[tag=pink.monster.b,type=marker]
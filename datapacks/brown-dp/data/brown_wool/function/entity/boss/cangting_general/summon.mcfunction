# 這個函數會召喚一隻蒼霆鎮域大將軍


execute at @n[tag=brown_wool.cangting_general.terrain] run summon zombie_horse ~ ~-0.5 ~ {Tags:["brown_wool.cangting_general.horse"],NoAI:true,attributes:[{id:max_health,base:200},{id:armor,base:20}],equipment:{body:{id:iron_horse_armor}},Health:999,Passengers:[{id:zombie,CustomName:{translate:"entity.brown_wool.cangting_general",color:"aqua"},Tags:["brown_wool.cangting_general0"],attributes:[{id:armor,base:20},{id:max_health,base:500}],equipment:{chest:{id:golden_chestplate,components:{trim:{pattern:silence,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},legs:{id:diamond_leggings,components:{trim:{pattern:silence,material:lapis},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},feet:{id:copper_boots,components:{trim:{pattern:silence,material:lapis},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},head:{id:netherite_helmet,components:{trim:{pattern:flow,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},mainhand:{id:golden_spear}},Health:999,drop_chances:{mainhand:0,chest:0,head:0,feet:0,legs:0,offhand:0},NoAI:true,DeathLootTable:"entities/villager",Rotation:[180,0],PersistenceRequired:true,HurtTime:1,Invulnerable:true}],DeathLootTable:"entities/villager",PersistenceRequired:true,HurtTime:1,Rotation:[180,0],drop_chances:{body:0},Invulnerable:true}


function brown_wool:narrative/cangting_general/cangting_general_summon1











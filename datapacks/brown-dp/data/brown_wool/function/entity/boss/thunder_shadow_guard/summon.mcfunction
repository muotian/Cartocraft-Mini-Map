# 這個函數會召喚一隻雙劍雷影衛


execute at @n[tag=brown_wool.thunder_shadow_guard.terrain] run summon wither_skeleton ~ ~-0.5 ~ {CustomName:{translate:"entity.brown_wool.thunder_shadow_guard",color:"aqua"},Tags:["brown_wool.thunder_shadow_guard0"],attributes:[{id:armor,base:20},{id:max_health,base:500}],equipment:{chest:{id:netherite_chestplate,components:{trim:{pattern:eye,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},legs:{id:netherite_leggings,components:{trim:{pattern:silence,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},feet:{id:netherite_boots,components:{trim:{pattern:flow,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},mainhand:{id:netherite_sword},offhand:{id:netherite_sword}},Health:999,drop_chances:{mainhand:0,chest:0,head:0,feet:0,legs:0,offhand:0},NoAI:true,DeathLootTable:"entities/villager",PersistenceRequired:true,Rotation:[90 , 0],HurtTime:1,Invulnerable:true}

function brown_wool:narrative/thunder_shadow_guard/thunder_shadow_guard_summon1


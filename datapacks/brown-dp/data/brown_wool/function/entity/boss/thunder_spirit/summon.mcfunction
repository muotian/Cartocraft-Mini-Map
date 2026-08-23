


execute at @n[tag=brown_wool.thunder_spirit.terrain] run summon allay ~ ~2 ~-19.5 {Tags:["brown_wool.thunder_spirit0"],attributes:[{id:max_health,base:999},{id:scale,base:16}],Health:999,NoAI:true,Invulnerable:true,DeathLootTable:"entities/villager",PersistenceRequired:true}

execute unless entity @e[type=marker,tag=brown_wool.thunder_spirit.terrain_3] at @n[tag=brown_wool.thunder_spirit.terrain] run summon vex ~ ~4 ~-19.5 {Tags:["brown_wool.thunder_spirit2"],attributes:[{id:max_health,base:130}],Health:999,NoAI:true,Invulnerable:true,DeathLootTable:"entities/villager",PersistenceRequired:true,active_effects:[{id:invisibility,duration:-1,show_particles:false}]}

execute if entity @e[type=marker,tag=brown_wool.thunder_spirit.terrain_3] at @n[tag=brown_wool.thunder_spirit.terrain] run summon vex ~ ~4 ~-19.5 {Tags:["brown_wool.thunder_spirit2"],attributes:[{id:max_health,base:135}],Health:999,NoAI:true,Invulnerable:true,DeathLootTable:"entities/villager",PersistenceRequired:true,active_effects:[{id:invisibility,duration:-1,show_particles:false}]}


function brown_wool:narrative/thunder_spirit2/thunder_spirit2_summon20





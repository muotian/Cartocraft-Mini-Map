

scoreboard players add @s brown_wool.thunder_shadow_guard.end 1





scoreboard players reset @s brown_wool.thunder_shadow_guard.switch
scoreboard players reset @s brown_wool.thunder_shadow_guard.cd
scoreboard players reset @s brown_wool.thunder_shadow_guard.time
scoreboard players reset @s brown_wool.thunder_shadow_guard.cast
scoreboard players reset @s brown_wool.thunder_shadow_guard.random
scoreboard players reset @s brown_wool.thunder_shadow_guard.pg
scoreboard players reset @s brown_wool.thunder_shadow_guard.pg_cd
scoreboard players reset @s brown_wool.thunder_shadow_guard.pg2
scoreboard players reset @s brown_wool.thunder_shadow_guard.pg_random
scoreboard players reset @s brown_wool.thunder_shadow_guard.skill_cd
scoreboard players reset @s brown_wool.thunder_shadow_guard.skill_time
scoreboard players reset @s brown_wool.thunder_shadow_guard.skill
scoreboard players reset @s brown_wool.thunder_shadow_guard.skill_random
kill @e[type=marker, tag=brown_wool.thunder_shadow_guard.cast3.0]
kill @e[type=marker, tag=brown_wool.thunder_shadow_guard.cast5.0]
kill @e[type=block_display, tag=brown_wool.thunder_shadow_guard.return0]
tag @s remove brown_wool.thunder_shadow_guard.cast
tag @s remove brown_wool.thunder_shadow_guard.pg
tag @s remove brown_wool.thunder_shadow_guard.pg0
tag @s remove brown_wool.thunder_shadow_guard.skill
tag @s remove brown_wool.thunder_shadow_guard.skill3.1
tag @s remove brown_wool.thunder_shadow_guard.skill2.0


execute at @e[type=marker, tag=brown_wool.thunder_shadow_guard.terrain ,limit=1] run tp @s ~ ~-0.5 ~
rotate @s facing ~-1 ~1 ~

execute unless score @s brown_wool.thunder_shadow_guard.end matches 228.. run data modify entity @s Invulnerable set value true

stopsound @a * brown_wool:custom.fire_and_thunder
scoreboard players reset @a brown_wool.thunder_shadow_guard.playsound

execute if score @s brown_wool.thunder_shadow_guard.end matches 70 at @e[type=marker, tag=brown_wool.thunder_shadow_guard.terrain ,limit=1] run summon wither_skeleton ~ ~-0.5 ~-2 {Invulnerable:true,CustomName:{translate:"entity.brown_wool.thunder_shadow_guard",color:"aqua"},Tags:["brown_wool.thunder_shadow_guard.end2","brown_wool.thunder_shadow_guard.end0"],attributes:[{id:armor,base:20},{id:max_health,base:600}],equipment:{chest:{id:netherite_chestplate,components:{trim:{pattern:eye,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},legs:{id:netherite_leggings,components:{trim:{pattern:silence,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},feet:{id:netherite_boots,components:{trim:{pattern:flow,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},mainhand:{id:netherite_sword},offhand:{id:netherite_sword}},Health:9990,drop_chances:{mainhand:0,chest:0,head:0,feet:0,legs:0,offhand:0},NoAI:true,DeathLootTable:"entities/villager",Rotation:[0 , 0],HurtTime:1}

execute if score @s brown_wool.thunder_shadow_guard.end matches 70 at @e[type=marker, tag=brown_wool.thunder_shadow_guard.terrain ,limit=1] run particle dust{color:[0, 0, 0],scale:3.0} ~ ~-0.5 ~-1 0.4 1 0.4 0.1 50

execute if score @s brown_wool.thunder_shadow_guard.end matches 120 at @e[type=marker, tag=brown_wool.thunder_shadow_guard.terrain ,limit=1] run summon wither_skeleton ~ ~-0.5 ~2 {Invulnerable:true,CustomName:{translate:"entity.brown_wool.thunder_shadow_guard",color:"aqua"},Tags:["brown_wool.thunder_shadow_guard.end2","brown_wool.thunder_shadow_guard.end0"],attributes:[{id:armor,base:20},{id:max_health,base:600}],equipment:{chest:{id:netherite_chestplate,components:{trim:{pattern:eye,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},legs:{id:netherite_leggings,components:{trim:{pattern:silence,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},feet:{id:netherite_boots,components:{trim:{pattern:flow,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},mainhand:{id:netherite_sword},offhand:{id:netherite_sword}},Health:9990,drop_chances:{mainhand:0,chest:0,head:0,feet:0,legs:0,offhand:0},NoAI:true,DeathLootTable:"entities/villager",Rotation:[180 , 0],HurtTime:1}

execute if score @s brown_wool.thunder_shadow_guard.end matches 120 at @e[type=marker, tag=brown_wool.thunder_shadow_guard.terrain ,limit=1] run particle dust{color:[0, 0, 0],scale:3.0} ~ ~-0.5 ~1 0.4 1 0.4 0.1 50

execute if score @s brown_wool.thunder_shadow_guard.end matches 20 run tellraw @a[tag=brown_wool.thunder_shadow_guard.player] [{text:"<",color:"white"},{"selector": "@p[tag=brown_wool.thunder_shadow_guard.player]",color:white},{text:">",color:"white"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_shadow_guard.end1",color:"white"}]
execute if score @s brown_wool.thunder_shadow_guard.end matches 70 run tellraw @a[tag=brown_wool.thunder_shadow_guard.player] [{text:"<?",color:"red"},{translate:"entity.brown_wool.thunder_shadow_guard",color:"red"},{text:"?>",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_shadow_guard.end2",color:"red"}]
execute if score @s brown_wool.thunder_shadow_guard.end matches 120 run tellraw @a[tag=brown_wool.thunder_shadow_guard.player] [{text:"<?",color:"red"},{translate:"entity.brown_wool.thunder_shadow_guard",color:"red"},{text:"?>",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_shadow_guard.end3",color:"red"}]
execute if score @s brown_wool.thunder_shadow_guard.end matches 170 run tellraw @a[tag=brown_wool.thunder_shadow_guard.player] [{text:"<?",color:"red"},{translate:"entity.brown_wool.thunder_shadow_guard",color:"red"},{text:"?>",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_shadow_guard.end4",color:"red"}]
execute if score @s brown_wool.thunder_shadow_guard.end matches 220 run tellraw @a[tag=brown_wool.thunder_shadow_guard.player] [{text:"<",color:"dark_purple"},{translate:"entity.brown_wool.thunder_shadow_guard",color:"dark_purple"},{text:">",color:"dark_purple"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_shadow_guard.end5",color:"dark_purple"}]
execute if score @s brown_wool.thunder_shadow_guard.end matches 270 run tellraw @a[tag=brown_wool.thunder_shadow_guard.player] [{text:"<",color:"dark_purple"},{translate:"entity.brown_wool.thunder_shadow_guard",color:"dark_purple"},{text:">",color:"dark_purple"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.thunder_shadow_guard.end6",color:"dark_purple"}]


execute if score @s brown_wool.thunder_shadow_guard.end matches 170 as @a[tag=brown_wool.thunder_shadow_guard.player] run effect give @s blindness 3 0 true
execute if score @s brown_wool.thunder_shadow_guard.end matches 170 as @a[tag=brown_wool.thunder_shadow_guard.player] run effect give @s slowness 3 5 true


execute if score @s brown_wool.thunder_shadow_guard.end matches 170 at @a[tag=brown_wool.thunder_shadow_guard.player] rotated ~ 0 run summon wither_skeleton ^ ^-5.5 ^1 {Invulnerable:true,CustomName:{translate:"entity.brown_wool.thunder_shadow_guard",color:"aqua"},Tags:["brown_wool.thunder_shadow_guard.end3","brown_wool.thunder_shadow_guard.end0"],attributes:[{id:armor,base:20},{id:max_health,base:600}],equipment:{chest:{id:netherite_chestplate,components:{trim:{pattern:eye,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},legs:{id:netherite_leggings,components:{trim:{pattern:silence,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},feet:{id:netherite_boots,components:{trim:{pattern:flow,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},mainhand:{id:netherite_sword},offhand:{id:netherite_sword}},Health:9990,drop_chances:{mainhand:0,chest:0,head:0,feet:0,legs:0,offhand:0},NoAI:true,DeathLootTable:"entities/villager",Rotation:[180 , 0],HurtTime:1}
execute if score @s brown_wool.thunder_shadow_guard.end matches 170 at @a[tag=brown_wool.thunder_shadow_guard.player] rotated ~ 0 run summon wither_skeleton ^1 ^-5.5 ^0.5 {Invulnerable:true,CustomName:{translate:"entity.brown_wool.thunder_shadow_guard",color:"aqua"},Tags:["brown_wool.thunder_shadow_guard.end3","brown_wool.thunder_shadow_guard.end0"],attributes:[{id:armor,base:20},{id:max_health,base:600}],equipment:{chest:{id:netherite_chestplate,components:{trim:{pattern:eye,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},legs:{id:netherite_leggings,components:{trim:{pattern:silence,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},feet:{id:netherite_boots,components:{trim:{pattern:flow,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},mainhand:{id:netherite_sword},offhand:{id:netherite_sword}},Health:9990,drop_chances:{mainhand:0,chest:0,head:0,feet:0,legs:0,offhand:0},NoAI:true,DeathLootTable:"entities/villager",Rotation:[180 , 0],HurtTime:1}
execute if score @s brown_wool.thunder_shadow_guard.end matches 170 at @a[tag=brown_wool.thunder_shadow_guard.player] rotated ~ 0 run summon wither_skeleton ^-1 ^-5.5 ^0.5 {Invulnerable:true,CustomName:{translate:"entity.brown_wool.thunder_shadow_guard",color:"aqua"},Tags:["brown_wool.thunder_shadow_guard.end3","brown_wool.thunder_shadow_guard.end0"],attributes:[{id:armor,base:20},{id:max_health,base:600}],equipment:{chest:{id:netherite_chestplate,components:{trim:{pattern:eye,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},legs:{id:netherite_leggings,components:{trim:{pattern:silence,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},feet:{id:netherite_boots,components:{trim:{pattern:flow,material:amethyst},attribute_modifiers:[{type:armor,amount:0,operation:add_value,id:"1766046898431"}],unbreakable:{}}},mainhand:{id:netherite_sword},offhand:{id:netherite_sword}},Health:9990,drop_chances:{mainhand:0,chest:0,head:0,feet:0,legs:0,offhand:0},NoAI:true,DeathLootTable:"entities/villager",Rotation:[180 , 0],HurtTime:1}

execute if score @s brown_wool.thunder_shadow_guard.end matches 170 as @e[type=wither_skeleton,tag=brown_wool.thunder_shadow_guard.end3] at @s facing entity @p[tag=brown_wool.thunder_shadow_guard.player] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

execute if score @s brown_wool.thunder_shadow_guard.end matches 175 as @e[type=wither_skeleton,tag=brown_wool.thunder_shadow_guard.end3] at @s run tp @s ~ ~5.5 ~


execute if score @s brown_wool.thunder_shadow_guard.end matches 320 as @e[type=wither_skeleton,tag=brown_wool.thunder_shadow_guard.end0] at @s run tp @s ~ ~-200 ~
execute if score @s brown_wool.thunder_shadow_guard.end matches 320 as @e[type=wither_skeleton,tag=brown_wool.thunder_shadow_guard.end0] run kill @s



execute if score @s brown_wool.thunder_shadow_guard.end matches 250.. as @e[type=wither_skeleton,tag=brown_wool.thunder_shadow_guard.end3] at @s facing entity @e[type=wither_skeleton,tag=brown_wool.thunder_shadow_guard,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^1

execute if score @s brown_wool.thunder_shadow_guard.end matches 220.. run particle large_smoke ^ ^ ^ 5 3 5 0.8 50
execute if score @s brown_wool.thunder_shadow_guard.end matches 1..200 run particle large_smoke ^ ^ ^ 1 1 1 0.1 20

execute if score @s brown_wool.thunder_shadow_guard.end matches 20 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunder_shadow_guard.end matches 60 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunder_shadow_guard.end matches 100 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunder_shadow_guard.end matches 140 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunder_shadow_guard.end matches 180 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.thunder_shadow_guard.end matches 220 at @s run summon lightning_bolt ~ ~-200 ~


effect give @s glowing 1 255 true


execute if score @s brown_wool.thunder_shadow_guard.end matches 320.. run particle explosion ~ ~ ~ 5 3 5 0.1 200
execute if score @s brown_wool.thunder_shadow_guard.end matches 320.. run tp @s ~ ~-200 ~

execute if score @s brown_wool.thunder_shadow_guard.end matches 320.. run kill @s





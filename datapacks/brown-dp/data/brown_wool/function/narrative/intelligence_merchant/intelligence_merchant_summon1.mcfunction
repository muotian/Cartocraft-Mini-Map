# 這個函數會召喚一隻情報商人
# 

kill @e[type=text_display,tag=brown_wool.intelligence_merchant.narrative0]
kill @e[type=interaction,tag=brown_wool.intelligence_merchant.narrative00]

summon marker ~ ~0.5 ~ {Tags:["brown_wool.intelligence_merchant.marker"],Rotation:[180,0]}
summon villager ~ ~ ~ {CustomName:{translate:"entity.brown_wool.intelligence_merchant",color:"aqua"},Tags:["brown_wool.intelligence_merchant"],Health:999,Invulnerable:true,PersistenceRequired:true,NoAI:true,Rotation:[180,0]}


execute at @n[type=marker,tag=brown_wool.intelligence_merchant.marker] rotated ~ 0 run summon minecraft:interaction ~ ~-0.5 ~ {Tags:["brown_wool.intelligence_merchant.narrative1.0","brown_wool.narrative0.0","brown_wool.intelligence_merchant.narrative00"],height:2.2,width:0.85,response:true}









kill @e[type=text_display,tag=brown_wool.intelligence_merchant.narrative0]
kill @e[type=interaction,tag=brown_wool.intelligence_merchant.narrative00]

execute at @n[type=marker,tag=brown_wool.intelligence_merchant.marker] rotated ~ 0 run summon minecraft:text_display ~ ~0.8 ~-1 {billboard:center,Tags:["brown_wool.intelligence_merchant.narrative16","brown_wool.intelligence_merchant.narrative0"],alignment: "center", background: -1, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text:[{translate:"entity.brown_wool.intelligence_merchant.narrative16",color:"black"}],line_width:999}
execute at @n[type=marker,tag=brown_wool.intelligence_merchant.marker] rotated ~ 0 run summon minecraft:text_display ~ ~0.438 ~-1 {billboard:center,Tags:["brown_wool.intelligence_merchant.narrative27","brown_wool.intelligence_merchant.narrative0","brown_wool.narrative.select"],alignment: "center", background: -16777216, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text:[{translate:"entity.brown_wool.intelligence_merchant.narrative27",color:"white"}],line_width:999}
execute at @n[type=marker,tag=brown_wool.intelligence_merchant.marker] rotated ~ 0 run summon minecraft:text_display ~ ~0.088 ~-1 {billboard:center,Tags:["brown_wool.intelligence_merchant.narrative28","brown_wool.intelligence_merchant.narrative0","brown_wool.narrative.select"],alignment: "center", background: -16777216, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text:[{translate:"entity.brown_wool.intelligence_merchant.narrative28",color:"white"}],line_width:999}
execute at @n[type=marker,tag=brown_wool.intelligence_merchant.marker] rotated ~ 0 run summon minecraft:interaction ~ ~0.47 ~-1 {Tags:["brown_wool.intelligence_merchant.narrative15.0","brown_wool.narrative0.0","brown_wool.intelligence_merchant.narrative00","brown_wool.narrative.select0"],height:0.35,width:0.6,response:true}
execute at @n[type=marker,tag=brown_wool.intelligence_merchant.marker] rotated ~ 0 run summon minecraft:interaction ~ ~0.12 ~-1 {Tags:["brown_wool.intelligence_merchant.narrative16.0","brown_wool.narrative0.0","brown_wool.intelligence_merchant.narrative00","brown_wool.narrative.select0"],height:0.35,width:0.6,response:true}




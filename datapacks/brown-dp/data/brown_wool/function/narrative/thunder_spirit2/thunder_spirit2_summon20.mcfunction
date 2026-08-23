

kill @e[type=text_display,tag=brown_wool.thunder_spirit2.narrative0]
kill @e[type=interaction,tag=brown_wool.thunder_spirit2.narrative00]

execute at @n[type=marker,tag=brown_wool.thunder_spirit.terrain] rotated ~ 0 run summon minecraft:text_display ~ ~0.8 ~-8.5 {billboard:center,Tags:["brown_wool.thunder_spirit2.narrative27","brown_wool.thunder_spirit2.narrative0"],alignment: "center", background: -1, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text:[{translate:"entity.brown_wool.thunder_spirit2.narrative27",color:"black"}],line_width:999}
execute at @n[type=marker,tag=brown_wool.thunder_spirit.terrain] rotated ~ 0 run summon minecraft:text_display ~ ~0.438 ~-8.5 {billboard:center,Tags:["brown_wool.thunder_spirit2.narrative28","brown_wool.thunder_spirit2.narrative0","brown_wool.narrative.select"],alignment: "center", background: -16777216, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text:[{translate:"entity.brown_wool.thunder_spirit2.narrative28",color:"white"}],line_width:999}
execute at @n[type=marker,tag=brown_wool.thunder_spirit.terrain] rotated ~ 0 run summon minecraft:interaction ~ ~0.47 ~-8.5 {Tags:["brown_wool.thunder_spirit2.narrative22.0","brown_wool.narrative0.0","brown_wool.thunder_spirit2.narrative00","brown_wool.narrative.select0"],height:0.35,width:0.6,response:true}




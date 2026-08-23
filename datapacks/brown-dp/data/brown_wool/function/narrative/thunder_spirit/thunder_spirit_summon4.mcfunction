

kill @e[type=text_display,tag=brown_wool.thunder_spirit.narrative0]
kill @e[type=interaction,tag=brown_wool.thunder_spirit.narrative00]

execute at @n[type=marker,tag=brown_wool.thunder_spirit.narrative_marker] rotated ~ 0 run summon minecraft:text_display ^ ^0.3 ^0.5 {billboard:center,Tags:["brown_wool.thunder_spirit.narrative4","brown_wool.thunder_spirit.narrative0"],alignment: "center", background: -1, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text:[{translate:"entity.brown_wool.thunder_spirit.narrative4",color:"black"}],line_width:999}
execute at @n[type=marker,tag=brown_wool.thunder_spirit.narrative_marker] rotated ~ 0 run summon minecraft:interaction ^ ^0.242 ^0.5 {Tags:["brown_wool.thunder_spirit.narrative4.0","brown_wool.narrative0.0","brown_wool.thunder_spirit.narrative00"],height:0.5,width:0.8,response:true}




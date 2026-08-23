

kill @e[type=text_display,tag=brown_wool.thunderous_fiend_rift_fang.narrative0]
kill @e[type=interaction,tag=brown_wool.thunderous_fiend_rift_fang.narrative00]

execute at @n[type=marker,tag=brown_wool.thunderous_fiend_rift_fang.terrain] rotated ~ 0 run summon minecraft:text_display ~ ~0.8 ~-1.1 {billboard:center,Tags:["brown_wool.thunderous_fiend_rift_fang.narrative19","brown_wool.thunderous_fiend_rift_fang.narrative0"],alignment: "center", background: -1, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text:[{translate:"entity.brown_wool.thunderous_fiend_rift_fang.narrative19",color:"black"}],line_width:999}
execute at @n[type=marker,tag=brown_wool.thunderous_fiend_rift_fang.terrain] rotated ~ 0 run summon minecraft:interaction ~ ~0.742 ~-1.1 {Tags:["brown_wool.thunderous_fiend_rift_fang.narrative17.0","brown_wool.narrative0.0","brown_wool.thunderous_fiend_rift_fang.narrative00"],height:0.5,width:0.8,response:true}







kill @e[type=text_display,tag=brown_wool.xuan_ting_priest.narrative0]
kill @e[type=interaction,tag=brown_wool.xuan_ting_priest.narrative00]


execute at @n[type=marker,tag=brown_wool.xuan_ting_priest.terrain] rotated ~ 0 run summon minecraft:text_display ~0.5 ~0.8 ~ {billboard:center,Tags:["brown_wool.xuan_ting_priest.narrative1","brown_wool.xuan_ting_priest.narrative0"],alignment: "center", background: -1, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text:[{"keybind":"key.use","italic":false,"color":"black"},{translate:"entity.brown_wool.xuan_ting_priest.narrative1",color:"black"}],line_width:999}
execute at @n[type=marker,tag=brown_wool.xuan_ting_priest.terrain] rotated ~ 0 run summon minecraft:interaction ~0.5 ~0.742 ~ {Tags:["brown_wool.xuan_ting_priest.narrative1.0","brown_wool.narrative0.0","brown_wool.xuan_ting_priest.narrative00"],height:0.5,width:0.8,response:true}






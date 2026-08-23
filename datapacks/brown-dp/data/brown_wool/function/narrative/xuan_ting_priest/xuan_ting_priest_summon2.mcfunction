

kill @e[type=text_display,tag=brown_wool.xuan_ting_priest.narrative0]
kill @e[type=interaction,tag=brown_wool.xuan_ting_priest.narrative00]

execute at @n[type=marker,tag=brown_wool.xuan_ting_priest.terrain] rotated ~ 0 run summon minecraft:text_display ~0.5 ~0.8 ~ {billboard:center,Tags:["brown_wool.xuan_ting_priest.narrative2","brown_wool.xuan_ting_priest.narrative0"],alignment: "center", background: -1, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text:[{translate:"entity.brown_wool.xuan_ting_priest.narrative2",color:"black"}],line_width:999}
execute at @n[type=marker,tag=brown_wool.xuan_ting_priest.terrain] rotated ~ 0 run summon minecraft:text_display ~0.5 ~0.438 ~ {billboard:center,Tags:["brown_wool.xuan_ting_priest.narrative3","brown_wool.xuan_ting_priest.narrative0","brown_wool.narrative.select"],alignment: "center", background: -16777216, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text:[{translate:"entity.brown_wool.xuan_ting_priest.narrative3",color:"white"}],line_width:999}
execute at @n[type=marker,tag=brown_wool.xuan_ting_priest.terrain] rotated ~ 0 run summon minecraft:text_display ~0.5 ~0.088 ~ {billboard:center,Tags:["brown_wool.xuan_ting_priest.narrative4","brown_wool.xuan_ting_priest.narrative0","brown_wool.narrative.select"],alignment: "center", background: -16777216, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, text:[{translate:"entity.brown_wool.xuan_ting_priest.narrative4",color:"white"}],line_width:999}
execute at @n[type=marker,tag=brown_wool.xuan_ting_priest.terrain] rotated ~ 0 run summon minecraft:interaction ~0.5 ~0.47 ~ {Tags:["brown_wool.xuan_ting_priest.narrative2.0","brown_wool.narrative0.0","brown_wool.xuan_ting_priest.narrative00","brown_wool.narrative.select0"],height:0.35,width:0.6,response:true}
execute at @n[type=marker,tag=brown_wool.xuan_ting_priest.terrain] rotated ~ 0 run summon minecraft:interaction ~0.5 ~0.12 ~ {Tags:["brown_wool.xuan_ting_priest.narrative3.0","brown_wool.narrative0.0","brown_wool.xuan_ting_priest.narrative00","brown_wool.narrative.select0"],height:0.35,width:0.6,response:true}





summon minecraft:item_display ~ ~ ~ {Tags:[white.move.temptation.frisbee,"summon"], teleport_duration: 1,\
Passengers:[{id: item_display, item: {components: {"minecraft:item_model": "white:temptation"}, count: 1, id: "minecraft:paper"}, shadow_strength: 0.0f, transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f]}, view_range: 2.0f, teleport_duration: 1}]}

rotate @e[tag=summon,type=item_display,limit=1] ~ ~

function white:sys/bullet/init
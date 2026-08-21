
summon minecraft:text_display ~ ~ ~ {Tags:[white.move.prism_oath.melee.count_disp,"summon"], alignment: "center", billboard:"center", background: 556286169, brightness: {block: 15, sky: 15}, default_background: 0b, line_width: 200, see_through: 0b, shadow: 1b, shadow_strength: 0.0f, teleport_duration: 1, text: {color: "#B5FFF5", text: "IX"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.25f, 1.25f, 1.25f], translation: [0.0f, 0.25f, 0.25f]}, view_range: 2.0f}

ride @e[tag=summon,type=text_display,limit=1] mount @s
function white:move/prism_oath/melee/count_disp/number

tag @e[tag=summon,type=text_display,limit=1] remove summon
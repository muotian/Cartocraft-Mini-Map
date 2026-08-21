
summon minecraft:text_display ~ ~ ~ {Tags:[white.move.muse.ball,"summon"], alignment: "center", background: 0, billboard: "center", brightness: {block: 15, sky: 15}, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, shadow_strength: 0.0f, teleport_duration: 2, text: {font: "white:default", text: "\u0001"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 3.0f, 3.0f], translation: [-0.045f, -0.45f, 0.0f]}, view_range: 2.0f}
function white:sys/bullet/init

# fx
particle minecraft:cloud ~ ~ ~ 0 0 0 0.25 5 force
playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1
playsound white:cart master @a ~ ~ ~ 0.5 0.5
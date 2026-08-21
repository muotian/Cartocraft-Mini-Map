
summon minecraft:item_display ~ ~ ~ {Tags: [white.move.sovereign_blade.blade, "summon"], item: {components: {"minecraft:item_model": "white:sovereign_blade"}, count: 1, id: "minecraft:paper"}, transformation: {left_rotation: [0.5f, -0.5f, -0.5f, 0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f]}, brightness: {block: 15, sky: 15}}

rotate @e[tag=summon,type=item_display,limit=1] ~ ~
data merge entity @e[tag=summon,type=item_display,limit=1] {teleport_duration: 2, transformation: {scale: [5.0f, 5.0f, 5.0f]}, start_interpolation: 0, interpolation_duration: 1}

function white:sys/bullet/init

# fx
playsound white:sovereign_blade master @a ~ ~ ~ 2 1
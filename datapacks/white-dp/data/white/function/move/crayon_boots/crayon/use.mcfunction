
summon minecraft:block_display ~ ~ ~ {Tags:[white.move.crayon_boots.crayon,"summon"],block_state: {Name: "minecraft:resin_clump", Properties: {down: "true", east: "false", north: "false", south: "false", up: "false", waterlogged: "false", west: "false"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, 0.0f, -0.5f]}}

scoreboard players set #limit white.main 0
execute summon marker run function white:move/crayon_boots/crayon/tpto_ground

function white:sys/bullet/init
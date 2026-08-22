#拿起時觸發一次
tag @s add gray.taking_sfs
tag @s add gray.user
#particle falling_dust{block_state:{Name:sand}} ^-1 ^ ^1 0.25 0.25 0.25 0 30
summon minecraft:item_display ~ ~ ~ {item: {components: {"minecraft:item_model": "minecraft:gray_sand_sword"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.2705981f, 0.6532815f, 0.2705981f, 0.6532815f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.9999993f, 0.9999992f], translation: [0.0f, 0.0f, 0.0f]},Tags:[gray.new,gray.sand_forge_sword],teleport_duration:1}
execute as @e[type=item_display,tag=gray.new,limit=1] run scoreboard players operation @s gray.id = @a[tag=gray.user,limit=1] gray.id
tag @e[type=item_display,tag=gray.new,limit=1] remove gray.new
tag @s remove gray.user
tag @s remove gray.sand_forge_sword_take
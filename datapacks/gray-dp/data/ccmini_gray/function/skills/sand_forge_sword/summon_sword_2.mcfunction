summon item_display ~ ~ ~ {item: {components: {"minecraft:item_model": "minecraft:gray_sand_sword"}, count: 1, id: "minecraft:iron_sword"}, transformation: {left_rotation: [0.2705981f, 0.6532815f, 0.2705981f, 0.6532815f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 3.0f, 3.0f], translation: [0.0f, 0.0f, 0.0f]},Tags:[gray.sand_forge_sword.rightclick_attack,gray.sand_forge_sword.rightclick_attack_2,gray.new],teleport_duration:1}
rotate @e[type=item_display,tag=gray.new,limit=1] facing entity @s
scoreboard players operation @e[type=item_display,tag=gray.new,limit=1] gray.id = @s gray.id
tag @e[type=item_display,tag=gray.new] remove gray.new
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1
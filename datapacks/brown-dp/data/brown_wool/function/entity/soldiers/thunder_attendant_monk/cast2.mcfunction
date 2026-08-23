# 執行者：電芒侍僧
# 執行位置：同上

# cast: 施放技能

# 重置記分板
scoreboard players set @s brown_wool.thunder_attendant_monk.ready 0
execute store result score @s brown_wool.thunder_attendant_monk.random run random value 1..2

# cd
scoreboard players set @s brown_wool.thunder_attendant_monk.cd 160

# 技能2
data modify entity @s NoAI set value true
rotate @s facing entity @p
execute rotated ~ 0 run summon minecraft:block_display ^ ^-2 ^1 {block_state: {Name: "minecraft:crying_obsidian"}, Tags:["brown_wool.thunder_attendant_monk.cast2"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 1.0f], translation: [-1.0f, -1.0f, -0.5f]}}
execute rotated ~ 0 run summon block_display ^ ^-2 ^1.2 {Tags:["brown_wool.thunder_attendant_monk.cast2","brown_wool.thunder_attendant_monk.cast2.2"]}
data modify entity @s NoAI set value false

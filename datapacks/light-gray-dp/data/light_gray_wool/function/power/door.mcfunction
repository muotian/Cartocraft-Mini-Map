summon minecraft:armor_stand ~ ~1 ~10 {Invisible:true,NoGravity:true,Tags:["light_gray_wool_door"]}

setblock ~ ~1 ~ minecraft:crying_obsidian


execute at @e[tag=light_gray_wool_door] run setblock ~ ~ ~ minecraft:crying_obsidian
execute at @e[tag=light_gray_wool_door] run setblock ~ ~1 ~ minecraft:crying_obsidian

function light_gray_wool:boss/summon
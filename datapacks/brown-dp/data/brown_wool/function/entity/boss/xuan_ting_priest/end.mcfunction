

scoreboard players add @s brown_wool.xuan_ting_priest.end 1





scoreboard players reset @s brown_wool.xuan_ting_priest.switch
scoreboard players reset @s brown_wool.xuan_ting_priest.cd
scoreboard players reset @s brown_wool.xuan_ting_priest.time
scoreboard players reset @s brown_wool.xuan_ting_priest.cast
scoreboard players reset @s brown_wool.xuan_ting_priest.random
scoreboard players reset @s brown_wool.xuan_ting_priest.pg
scoreboard players reset @s brown_wool.xuan_ting_priest.pg_cd
scoreboard players reset @s brown_wool.xuan_ting_priest.pg2
scoreboard players reset @s brown_wool.xuan_ting_priest.pg_random
scoreboard players reset @s brown_wool.xuan_ting_priest.skill_cd
scoreboard players reset @s brown_wool.xuan_ting_priest.skill_time
scoreboard players reset @s brown_wool.xuan_ting_priest.skill
scoreboard players reset @s brown_wool.xuan_ting_priest.skill_random
kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.pg0]
kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.cast1.0]
kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.cast2]
kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.cast3]
kill @e[type=magma_cube, tag=brown_wool.xuan_ting_priest.cast4.1]
kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.cast4.2]
kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.cast5]
kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.skill1.2]
kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.skill2.0]
kill @e[type=block_display, tag=brown_wool.xuan_ting_priest.skill3.0]
kill @e[type=allay,tag=brown_wool.xuan_ting_priest.switch2]
tag @s remove brown_wool.xuan_ting_priest.cast
tag @s remove brown_wool.xuan_ting_priest.pg
tag @s remove brown_wool.xuan_ting_priest.pg0
tag @s remove brown_wool.xuan_ting_priest.skill


execute at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run tp @s ~ ~1.5 ~
rotate @s facing ~1 ~1 ~

execute if score @s brown_wool.xuan_ting_priest.end matches 1 run data modify entity @s Invulnerable set value true

stopsound @a * brown_wool:custom.jingle_punks_cataclysmic_molten_core
scoreboard players reset @a brown_wool.xuan_ting_priest.playsound


execute if score @s brown_wool.xuan_ting_priest.end matches 20 run tellraw @a[tag=brown_wool.xuan_ting_priest.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.xuan_ting_priest",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.xuan_ting_priest.end1",color:"red"}]
execute if score @s brown_wool.xuan_ting_priest.end matches 70 run tellraw @a[tag=brown_wool.xuan_ting_priest.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.xuan_ting_priest",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.xuan_ting_priest.end2",color:"red"}]
execute if score @s brown_wool.xuan_ting_priest.end matches 120 run tellraw @a[tag=brown_wool.xuan_ting_priest.player] [{text:"<",color:"aqua"},{translate:"entity.brown_wool.thunder_spirit",color:"aqua"},{text:">",color:"aqua"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.xuan_ting_priest.end3",color:"aqua"}]
execute if score @s brown_wool.xuan_ting_priest.end matches 170 run tellraw @a[tag=brown_wool.xuan_ting_priest.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.xuan_ting_priest",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.xuan_ting_priest.end4",color:"red"}]
execute if score @s brown_wool.xuan_ting_priest.end matches 220 run tellraw @a[tag=brown_wool.xuan_ting_priest.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.xuan_ting_priest",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.xuan_ting_priest.end5",color:"red"}]
execute if score @s brown_wool.xuan_ting_priest.end matches 270 run tellraw @a[tag=brown_wool.xuan_ting_priest.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.xuan_ting_priest",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.xuan_ting_priest.end6",color:"red"}]
execute if score @s brown_wool.xuan_ting_priest.end matches 320 run tellraw @a[tag=brown_wool.xuan_ting_priest.player] [{text:"<",color:"red"},{translate:"entity.brown_wool.xuan_ting_priest",color:"red"},{text:">",color:"red"},{"text":"》","italic":false,"color":"yellow"},{translate:"entity.brown_wool.xuan_ting_priest.end7",color:"red"}]




execute if score @s brown_wool.xuan_ting_priest.end matches 65 at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run summon minecraft:block_display ~ ~-0.5 ~6 {Tags:["brown_wool.xuan_ting_priest.end2","brown_wool.xuan_ting_priest.end0"],Glowing:1b,block_state: {Name: "minecraft:pearlescent_froglight", Properties: {axis: "y"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 6.0f, 1.5f], translation: [-0.75f, 0.0f, -0.75f]}}
execute if score @s brown_wool.xuan_ting_priest.end matches 68 at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run summon minecraft:block_display ~-6 ~-0.5 ~ {Tags:["brown_wool.xuan_ting_priest.end2","brown_wool.xuan_ting_priest.end0"],Glowing:1b,block_state: {Name: "minecraft:pearlescent_froglight", Properties: {axis: "y"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 6.0f, 1.5f], translation: [-0.75f, 0.0f, -0.75f]}}
execute if score @s brown_wool.xuan_ting_priest.end matches 71 at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run summon minecraft:block_display ~ ~-0.5 ~-6 {Tags:["brown_wool.xuan_ting_priest.end2","brown_wool.xuan_ting_priest.end0"],Glowing:1b,block_state: {Name: "minecraft:pearlescent_froglight", Properties: {axis: "y"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 6.0f, 1.5f], translation: [-0.75f, 0.0f, -0.75f]}}
execute if score @s brown_wool.xuan_ting_priest.end matches 74 at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run summon minecraft:block_display ~6 ~-0.5 ~ {Tags:["brown_wool.xuan_ting_priest.end2","brown_wool.xuan_ting_priest.end0"],Glowing:1b,block_state: {Name: "minecraft:pearlescent_froglight", Properties: {axis: "y"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 6.0f, 1.5f], translation: [-0.75f, 0.0f, -0.75f]}}
execute if score @s brown_wool.xuan_ting_priest.end matches 77 at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run summon minecraft:block_display ~12 ~-0.5 ~6 {Tags:["brown_wool.xuan_ting_priest.end2","brown_wool.xuan_ting_priest.end0"],Glowing:1b,block_state: {Name: "minecraft:pearlescent_froglight", Properties: {axis: "y"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 6.0f, 1.5f], translation: [-0.75f, 0.0f, -0.75f]}}
execute if score @s brown_wool.xuan_ting_priest.end matches 80 at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run summon minecraft:block_display ~6 ~-0.5 ~12 {Tags:["brown_wool.xuan_ting_priest.end2","brown_wool.xuan_ting_priest.end0"],Glowing:1b,block_state: {Name: "minecraft:pearlescent_froglight", Properties: {axis: "y"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 6.0f, 1.5f], translation: [-0.75f, 0.0f, -0.75f]}}
execute if score @s brown_wool.xuan_ting_priest.end matches 83 at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run summon minecraft:block_display ~-6 ~-0.5 ~12 {Tags:["brown_wool.xuan_ting_priest.end2","brown_wool.xuan_ting_priest.end0"],Glowing:1b,block_state: {Name: "minecraft:pearlescent_froglight", Properties: {axis: "y"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 6.0f, 1.5f], translation: [-0.75f, 0.0f, -0.75f]}}
execute if score @s brown_wool.xuan_ting_priest.end matches 86 at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run summon minecraft:block_display ~-12 ~-0.5 ~6 {Tags:["brown_wool.xuan_ting_priest.end2","brown_wool.xuan_ting_priest.end0"],Glowing:1b,block_state: {Name: "minecraft:pearlescent_froglight", Properties: {axis: "y"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 6.0f, 1.5f], translation: [-0.75f, 0.0f, -0.75f]}}
execute if score @s brown_wool.xuan_ting_priest.end matches 89 at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run summon minecraft:block_display ~-12 ~-0.5 ~-6 {Tags:["brown_wool.xuan_ting_priest.end2","brown_wool.xuan_ting_priest.end0"],Glowing:1b,block_state: {Name: "minecraft:pearlescent_froglight", Properties: {axis: "y"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 6.0f, 1.5f], translation: [-0.75f, 0.0f, -0.75f]}}
execute if score @s brown_wool.xuan_ting_priest.end matches 92 at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run summon minecraft:block_display ~-6 ~-0.5 ~-12 {Tags:["brown_wool.xuan_ting_priest.end2","brown_wool.xuan_ting_priest.end0"],Glowing:1b,block_state: {Name: "minecraft:pearlescent_froglight", Properties: {axis: "y"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 6.0f, 1.5f], translation: [-0.75f, 0.0f, -0.75f]}}
execute if score @s brown_wool.xuan_ting_priest.end matches 95 at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run summon minecraft:block_display ~6 ~-0.5 ~-12 {Tags:["brown_wool.xuan_ting_priest.end2","brown_wool.xuan_ting_priest.end0"],Glowing:1b,block_state: {Name: "minecraft:pearlescent_froglight", Properties: {axis: "y"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 6.0f, 1.5f], translation: [-0.75f, 0.0f, -0.75f]}}
execute if score @s brown_wool.xuan_ting_priest.end matches 98 at @e[type=marker, tag=brown_wool.xuan_ting_priest.terrain ,limit=1] run summon minecraft:block_display ~12 ~-0.5 ~-6 {Tags:["brown_wool.xuan_ting_priest.end2","brown_wool.xuan_ting_priest.end0"],Glowing:1b,block_state: {Name: "minecraft:pearlescent_froglight", Properties: {axis: "y"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 6.0f, 1.5f], translation: [-0.75f, 0.0f, -0.75f]}}

execute if score @s brown_wool.xuan_ting_priest.end matches 110 run summon allay ~7 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 113 run summon allay ~ ~ ~7 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 116 run summon allay ~-7 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 119 run summon allay ~ ~-0.5 ~-7 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 122 run summon allay ~7 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 125 run summon allay ~ ~-0.5 ~8 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 128 run summon allay ~-8 ~-1.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 131 run summon allay ~ ~-1.5 ~-8 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 134 run summon allay ~8 ~-1.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 137 run summon allay ~ ~ ~6 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 140 run summon allay ~-6 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 143 run summon allay ~ ~ ~-6 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 146 run summon allay ~6 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 149 run summon allay ~ ~-0.5 ~7 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 152 run summon allay ~-7 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 155 run summon allay ~ ~-1.5 ~-7 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 158 run summon allay ~7 ~-1.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 161 run summon allay ~ ~-1.5 ~8 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 164 run summon allay ~-8 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 167 run summon allay ~ ~ ~-8 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 170 run summon allay ~8 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 173 run summon allay ~ ~-0.5 ~6 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 176 run summon allay ~-6 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 179 run summon allay ~ ~-0.5 ~-6 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 182 run summon allay ~6 ~-1.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 185 run summon allay ~7 ~-1.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 188 run summon allay ~ ~-1.5 ~7 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 191 run summon allay ~-7 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 194 run summon allay ~ ~ ~-7 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 197 run summon allay ~7 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 200 run summon allay ~ ~-0.5 ~8 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 203 run summon allay ~-8 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 206 run summon allay ~ ~-0.5 ~-8 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 209 run summon allay ~8 ~-1.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 212 run summon allay ~ ~-1.5 ~6 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 215 run summon allay ~-6 ~-1.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 218 run summon allay ~ ~ ~-6 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 221 run summon allay ~6 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 224 run summon allay ~7 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 227 run summon allay ~ ~-0.5 ~7 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 230 run summon allay ~-7 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 233 run summon allay ~ ~-0.5 ~-7 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 236 run summon allay ~7 ~-1.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 239 run summon allay ~ ~-1.5 ~8 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 242 run summon allay ~-8 ~-1.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 245 run summon allay ~ ~ ~-8 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 248 run summon allay ~8 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 251 run summon allay ~ ~ ~6 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 254 run summon allay ~-6 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 257 run summon allay ~ ~-0.5 ~-6 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 260 run summon allay ~6 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 263 run summon allay ~7 ~-1.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 266 run summon allay ~ ~-1.5 ~7 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 269 run summon allay ~-7 ~-1.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 272 run summon allay ~ ~ ~-7 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 275 run summon allay ~7 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 278 run summon allay ~ ~ ~8 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 281 run summon allay ~-8 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 284 run summon allay ~ ~-0.5 ~-8 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 287 run summon allay ~8 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 290 run summon allay ~ ~-1.5 ~6 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 293 run summon allay ~-6 ~-1.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 296 run summon allay ~ ~-1.5 ~-6 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 299 run summon allay ~6 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 302 run summon allay ~7 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 305 run summon allay ~ ~ ~7 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 308 run summon allay ~-7 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 311 run summon allay ~ ~-0.5 ~-7 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 314 run summon allay ~7 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 317 run summon allay ~ ~-1.5 ~8 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 320 run summon allay ~-8 ~-1.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 323 run summon allay ~ ~-1.5 ~-8 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 326 run summon allay ~8 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 329 run summon allay ~ ~ ~6 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 332 run summon allay ~-6 ~ ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 335 run summon allay ~ ~-0.5 ~-6 {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}
execute if score @s brown_wool.xuan_ting_priest.end matches 338 run summon allay ~6 ~-0.5 ~ {Invulnerable:true,Tags:["brown_wool.xuan_ting_priest.end3","brown_wool.xuan_ting_priest.end0"],NoAI:true}

execute if score @s brown_wool.xuan_ting_priest.end matches 70 run summon minecraft:block_display ~ ~1 ~ {Tags:["brown_wool.xuan_ting_priest.end2","brown_wool.xuan_ting_priest.end0"],Glowing:1b,block_state: {Name: "minecraft:purple_stained_glass"}, transformation: {left_rotation: [-0.35355178f, -0.3535482f, -0.1464368f, 0.85355794f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0000749f, 2.999958f, 2.9999676f], translation: [-1.0606585f, -2.1213233f, -1.0606583f]}}



execute as @e[tag=brown_wool.xuan_ting_priest.end0,type=block_display] at @s run rotate @s facing ^1 ^ ^5
execute as @e[tag=brown_wool.xuan_ting_priest.end0,type=allay] at @s facing entity @e[type=stray, tag=brown_wool.xuan_ting_priest,limit=1] feet run tp @s ^ ^ ^0.2 ~ ~
execute as @e[tag=brown_wool.xuan_ting_priest.end0,type=allay] at @s if entity @e[type=stray, tag=brown_wool.xuan_ting_priest,distance=..0.5] run tag @s add brown_wool.xuan_ting_priest.end4
execute as @e[tag=brown_wool.xuan_ting_priest.end0,type=allay] if entity @s[tag=brown_wool.xuan_ting_priest.end4] run tp @s ~ ~-200 ~
execute as @e[tag=brown_wool.xuan_ting_priest.end0,type=allay] if entity @s[tag=brown_wool.xuan_ting_priest.end4] run kill @s



execute if score @s brown_wool.xuan_ting_priest.end matches 20 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.xuan_ting_priest.end matches 60 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.xuan_ting_priest.end matches 100 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.xuan_ting_priest.end matches 140 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.xuan_ting_priest.end matches 180 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.xuan_ting_priest.end matches 220 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.xuan_ting_priest.end matches 260 at @s run summon lightning_bolt ~ ~-200 ~
execute if score @s brown_wool.xuan_ting_priest.end matches 300 at @s run summon lightning_bolt ~ ~-200 ~


effect give @s glowing 1 255 true

execute if score @s brown_wool.xuan_ting_priest.end matches 359.. run kill @e[tag=brown_wool.xuan_ting_priest.end0]

execute if score @s brown_wool.xuan_ting_priest.end matches 360.. run particle explosion ~ ~ ~ 5 3 5 0.1 200
execute if score @s brown_wool.xuan_ting_priest.end matches 360.. run tp @s ~ ~-200 ~

execute if score @s brown_wool.xuan_ting_priest.end matches 360.. run kill @s





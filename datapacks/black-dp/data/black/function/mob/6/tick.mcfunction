scoreboard players add @s icebird.core 1
execute if score @s icebird.core matches 1 run summon item_display ~ ~ ~ {Glowing:1b,interpolation_duration:40,teleport_duration:1,Tags:["black.display_2","black.display"],glow_color_override:14079694,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,0.1f,1f]},item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"black:circle3"}}}
execute if score @s icebird.core matches 1 run playsound minecraft:entity.evoker.cast_spell block @a ~ ~ ~ 2 1
execute if score @s icebird.core matches 1 run particle minecraft:firework ~ ~1 ~ 0.5 0 0.5 0.3 40 force


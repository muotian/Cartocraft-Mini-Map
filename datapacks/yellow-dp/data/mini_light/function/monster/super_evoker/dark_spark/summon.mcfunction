

summon item_display ~ ~ ~ {item:{id:"crying_obsidian",count:1b},Tags:["new","mini_light.dark_spark"],brightness:{block:15,sky:15},Glowing:1b,glow_color_override:16713190,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.2f,0.2f,0.2f],translation:[0.0f,0.0f,0.0f]},teleport_duration:1}


scoreboard players set @n[tag=new, tag=mini_light.dark_spark] mini_light.duration 100


execute as @e[tag=mini_light.dark_spark, tag=new] store result entity @s Rotation[0] float 1 run random value -180..180
execute as @e[tag=mini_light.dark_spark, tag=new] store result entity @s Rotation[1] float 1 run random value -60..0

tag @e[tag=new] remove new

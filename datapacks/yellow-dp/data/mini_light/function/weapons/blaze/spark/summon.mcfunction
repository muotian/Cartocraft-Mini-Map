tag @e[type=#mini_light:monster, type=!player,distance=..15,sort=random,limit=1,predicate=!mini_light:weapons/spark_already] add spark_target
execute unless entity @e[tag=spark_target] run tag @e[type=#mini_light:monster, type=!player,distance=..15,sort=random,limit=1] add spark_target
execute unless entity @e[tag=spark_target] run return fail

summon item_display ~ ~ ~ {item:{id:gold_block,count:1b},Tags:["new","mini_light.spark"],brightness:{block:15,sky:15},Glowing:1b,glow_color_override:16756741,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.2f,0.2f,0.2f],translation:[0.0f,0.0f,0.0f]},teleport_duration:1}
execute at @n[tag=spark_target] anchored eyes run summon marker ^ ^ ^ {Tags:["new", "mini_light.spark_marker", "mini_light.decoration"]}

scoreboard players add $index mini_light.spark_id 1
scoreboard players operation @n[tag=new, tag=mini_light.spark] mini_light.spark_id = $index mini_light.spark_id
scoreboard players operation @n[tag=new, tag=mini_light.spark_marker] mini_light.spark_id = $index mini_light.spark_id

execute as @e[tag=mini_light.spark, tag=new] store result entity @s Rotation[0] float 1 run random value -180..180
execute as @e[tag=mini_light.spark, tag=new] store result entity @s Rotation[1] float 1 run random value -60..0

ride @n[tag=mini_light.spark_marker, tag=new] mount @n[tag=spark_target]

tag @e[tag=new] remove new
tag @e[tag=spark_target] remove spark_target
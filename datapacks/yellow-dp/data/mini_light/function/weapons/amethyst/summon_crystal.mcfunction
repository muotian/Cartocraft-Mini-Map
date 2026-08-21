# 執行者、執行位置是被爆炸的怪物

particle flash{color:[1.0, 1.0, 1.0, 1.0]} ~ ~1.5 ~
playsound block.amethyst_block.break ambient @a ~ ~ ~
playsound minecraft:block.amethyst_block.hit ambient @a ~ ~ ~
playsound minecraft:block.glass.break ambient @a ~ ~ ~ 1 0.7

summon minecraft:item_display ~ ~ ~ {Tags:["new", "animation", "mini_light.decoration", "crystal"],brightness:{block:15,sky:15},item:{count:1,id:"minecraft:amethyst_block"},transformation:{left_rotation:[0.6845083f,0.17744467f,0.1766881f,0.6846482f],right_rotation:[0.28075126f,0.10594929f,0.36782104f,-0.8801484f],scale:[0.002f,0.01f,0.002f],translation:[0.0f,-0.5f,0.0f]}}
summon minecraft:item_display ~ ~ ~ {Tags:["new", "animation", "mini_light.decoration", "crystal"],brightness:{block:15,sky:15},item:{count:1,id:"minecraft:amethyst_block"},transformation:{left_rotation:[0.6845083f,0.17744467f,0.1766881f,0.6846482f],right_rotation:[0.28075126f,0.10594929f,0.36782104f,-0.8801484f],scale:[0.002f,0.01f,0.002f],translation:[0.0f,-0.5f,0.0f]}}
summon minecraft:item_display ~ ~ ~ {Tags:["new", "animation", "mini_light.decoration", "crystal"],brightness:{block:15,sky:15},item:{count:1,id:"minecraft:calcite"},transformation:{left_rotation:[0.6026065f,0.3700048f,0.3689566f,0.60318565f],right_rotation:[0.2807553f,0.10594065f,0.36782372f,-0.88014704f],scale:[0.002f,0.01f,0.002f],translation:[0.0f,-0.5f,0.0f]}}
summon minecraft:item_display ~ ~ ~ {Tags:["new", "animation", "mini_light.decoration", "crystal"],brightness:{block:15,sky:15},item:{count:1,id:"minecraft:purple_stained_glass"},transformation:{left_rotation:[0.49961552f,0.50043726f,0.4994207f,0.50052565f],right_rotation:[0.28075936f,0.10593192f,0.3678264f,-0.8801456f],scale:[0.002f,0.01f,0.002f],translation:[0.0f,-0.5f,0.0f]}}
summon minecraft:item_display ~ ~ ~ {Tags:["new", "animation", "mini_light.decoration", "crystal"],brightness:{block:15,sky:15},item:{count:1,id:"minecraft:white_stained_glass"},transformation:{left_rotation:[0.3532706f,0.6122854f,0.6122826f,0.3541422f],right_rotation:[0.28076354f,0.10592321f,0.36782914f,-0.8801443f],scale:[0.002f,0.01f,0.002f],translation:[0.0f,-0.5f,0.0f]}}
summon minecraft:item_display ~ ~ ~ {Tags:["new", "animation", "mini_light.decoration", "crystal"],brightness:{block:15,sky:15},item:{count:1,id:"minecraft:white_stained_glass"},transformation:{left_rotation:[0.3532706f,0.6122854f,0.6122826f,0.3541422f],right_rotation:[0.28076354f,0.10592321f,0.36782914f,-0.8801443f],scale:[0.002f,0.01f,0.002f],translation:[0.0f,-0.5f,0.0f]}}

execute as @e[tag=crystal, tag=new] store result entity @s Rotation[0] float 1 run random value -180..180
execute as @e[tag=crystal, tag=new] store result entity @s Rotation[1] float 1 run random value -60..60

tag @s add this
execute as @e[tag=crystal, tag=new] run ride @s mount @n[tag=this]
tag @s remove this

scoreboard players set @e[tag=crystal, tag=new] mini_light.duration 30

tag @e[tag=new] remove new

schedule function mini_light:weapons/amethyst/crystal_animation 2t append
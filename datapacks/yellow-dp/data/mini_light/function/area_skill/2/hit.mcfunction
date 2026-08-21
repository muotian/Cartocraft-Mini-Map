tag @e[type=#mini_light:monster,dx=0,dy=0,dz=0,limit=1] add mini_light.fall_stone_target
tag @e[type=#mini_light:monster,dx=0,dy=0,dz=0,limit=1] add new

execute as @e[tag=mini_light.fall_stone_target,limit=1,tag=new] at @s run summon block_display ~ ~7 ~ {teleport_duration:1,Passengers:[{id:"minecraft:block_display",Passengers:[{id:"minecraft:block_display",Passengers:[{id:"minecraft:block_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[45f,90f,-45f,1f],translation:[0f,-.1f,.7f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:deepslate"},Tags:["mini_light.area_skill_cave_stone_tag","decoration"]}],transformation:{left_rotation:[30f,80f,30f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,0.3f,0.3f],scale:[0.8f,0.8f,0.8f]},block_state:{Name:"minecraft:cobblestone"},Tags:["mini_light.area_skill_cave_stone_tag","decoration"]}],transformation:{left_rotation:[30f,60f,90f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,0f,0.1f],scale:[1.2f,1.2f,1.2f]},block_state:{Name:"minecraft:deepslate"},Tags:["mini_light.area_skill_cave_stone_tag","decoration"]}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[50f,50f,50f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:cobblestone"},Tags:["mini_light.area_skill_cave_stone","new","mini_light.area_skill_cave_stone_tag","decoration"]}
effect give @e[tag=mini_light.fall_stone_target,limit=1,tag=new] slowness 2 10 true

kill @s
tag @e[tag=new] remove new

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 1

#

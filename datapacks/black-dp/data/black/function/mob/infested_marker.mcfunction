#by JaCkY99
#black

playsound entity.generic.explode player @a ~ ~ ~ 1 1.5

particle explosion ~0.5 ~-0.25 ~0.15 0 0 0 0 0
particle explosion ~-0.25 ~-0.75 ~0.3 0 0 0 0 0
particle explosion ~0.1 ~-1 ~-0.2 0 0 0 0 0
particle smoke ~ ~-0.5 ~ 0 0 0 0.1 15
particle large_smoke ~ ~-0.5 ~ 0 0 0 0.1 2

summon silverfish ~ ~-0.5 ~ {Health:2f,Motion:[0.15,0.5,0.15],CustomName:'{"color":"white","translate":"entity.black.silverfish"}',attributes:[{id:"minecraft:max_health",base:2}]}
summon silverfish ~ ~-0.5 ~ {Health:2f,Motion:[-0.15,0.5,0.15],CustomName:'{"color":"white","translate":"entity.black.silverfish"}',attributes:[{id:"minecraft:max_health",base:2}]}
summon silverfish ~ ~-0.5 ~ {Health:2f,Motion:[0.15,0.5,-0.15],CustomName:'{"color":"white","translate":"entity.black.silverfish"}',attributes:[{id:"minecraft:max_health",base:2}]}
summon silverfish ~ ~-0.5 ~ {Health:2f,Motion:[-0.15,0.5,-0.15],CustomName:'{"color":"white","translate":"entity.black.silverfish"}',attributes:[{id:"minecraft:max_health",base:2}]}

kill @s
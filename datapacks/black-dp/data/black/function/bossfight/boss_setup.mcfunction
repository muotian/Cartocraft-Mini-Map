kill @e[type=marker,tag=black.boss1_center]
kill @e[type=marker,tag=icebird.b1s1_corner]
summon marker ~ ~ ~ {Tags:["black.boss1_center"]}
execute at @n[tag=black.boss1_center] run summon marker ~12 ~ ~12 {Tags:["icebird.b1s1_corner","icebird.b1s1_corner1"],Rotation:[180f,0f]}
execute at @n[tag=black.boss1_center] run summon marker ~12 ~ ~-12 {Tags:["icebird.b1s1_corner","icebird.b1s1_corner2"],Rotation:[90f,0f]}
execute at @n[tag=black.boss1_center] run summon marker ~-12 ~ ~-12 {Tags:["icebird.b1s1_corner","icebird.b1s1_corner3"],Rotation:[0f,0f]}
execute at @n[tag=black.boss1_center] run summon marker ~-12 ~ ~12 {Tags:["icebird.b1s1_corner","icebird.b1s1_corner4"],Rotation:[-90f,0f]}